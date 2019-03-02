#! /usr/bin/env lua

local linux		= require('llinux')
local socket	= require("socket")
local epoll		= require('lepoll')
local bit		= require('bit')
local json		= require('json')
local sqlite3	= require("lsqlite3")

R = {
	client	=nil,	--向外通知的fd,长连接
	buf 	= "",
	state 	= 0,	--0：断开，1：连接
	blink 	= 0,
	ip			=nil,
	is_connect = 0,	--是否连接过
	blood	= 0,	-- 0:init	1:ap	2:sta
	
    log = function ( ... ) print(os.date(), ...) end,
}

function Sleep(n)
   os.execute("sleep " .. n)
end

function wifi_light_on()
	os.execute("himm 0x201B0100 0x00")
end

function wifi_light_off()
	os.execute("himm 0x201B0100 0xFF")
end

function wifi_light_blink()
	if ( R.blink == 0 ) then
		os.execute("himm 0x201B0100 0xFF")
	else
		os.execute("himm 0x201B0100 0x00")
	end
	R.blink = R.blink + 1
	R.blink = R.blink%2
end


function tcp_client_cmd(cmd)
    if nil == R.client then
        --R.client, msg = socket.connect("192.168.1.164", 10086)
		R.client, msg = socket.connect("127.0.0.1", 10086)
        if nil == R.client then
            R.log(msg)
            return 1
        end
    end
    local ret, msg = R.client:send("AT+B " .. cmd)
    if nil == ret then
        R.log(cmd, msg)
        R.client:close()
        R.client = nil
        return 1
    end
    R.log(cmd)
	return 0
end

function file_exists(path)
  local file = io.open(path, "rb")
  if file then file:close() end
  return file ~= nil
end

function ip_check(data)
    local ip0, ip1, ip2, ip3 = data:match('(%d+)%.(%d+)%.(%d+)%.(%d+)')
    if ip0 and ip1 and ip2 and ip3 then
        if tonumber(ip0) > 255 or tonumber(ip1) > 255 or tonumber(ip2) > 255 or tonumber(ip3) > 255 then
            return nil
        end
    else
        return nil
    end
    return string.format('%d.%d.%d.%d', ip0, ip1, ip2, ip3)
end

function get_wifi_config()
    local db = sqlite3.open("/usr/share/avlink.db")
    if not db then return nil end

    local config = nil
    local sql = string.format("SELECT item FROM config WHERE name='%s' LIMIT 1;", 'wifi')
    for row in db:nrows(sql) do
        config = row.item
    end
    db:close()

    local ret = json.decode(config)
    return ret
end

function clean_wifi_config()
	local db = sqlite3.open("/usr/share/avlink.db")
    if not db then return -1 end

    config = '{"ssid":"","password":""}'

    local sql = string.format("UPDATE config SET item='%s' WHERE name='%s';", config, 'wifi')
    local ret = db:exec(sql)
    db:close()
    if 0 ~= ret then
    	  return -1
    end
    return 0
end

function check_wpa_process()

    local file = io.popen('wpa_cli -i ra0 ping')
    if not file then return nil end
    local data = file:read('*a')
    file:close()

    local ret = data:match('PONG')
    if ret == nil then
      os.execute('wpa_supplicant -D wext -i ra0 -c /etc/wpa_supplicant.conf -B')
    end
end

function check_wpa_file()
	local file = file_exists("/etc/wpa_supplicant.conf")
	if not file then 
		local temp =  'ctrl_interface=/var/run/wpa_supplicant\nupdate_config=1\n'
		os.execute("touch /etc/wpa_supplicant.conf")
		os.execute('echo -e "'.. temp ..'" > /etc/wpa_supplicant.conf')
	end
end

function check_wpa_status()
    local file = io.popen('wpa_cli -i ra0 status')
    if not file then return nil end
    local data = file:read('*a')
    file:close()

	
	local ret_state = string.find(data, "COMPLETED")
	local ret_ip = ip_check(data)
	
	if ret_state then
		if ret_ip then
			
			if ( R.state == 0 ) then

				print("++++++++++++++++ wifi connect ok, ip = "..ret_ip)

				-- himedia on
				
				
				
				ret = tcp_client_cmd("WIFI connect "..ret_ip.."\r\n")
				R.state = 1
				R.is_connect = 1;

			end
			

		else
			--print("udhcpc -i ra0")
			os.execute("killall udhcpc")
			os.execute("udhcpc -i ra0")			
		end	
		
		return 0
	else
		if ( R.state == 1 ) then
			print("---------------------- wifi disconnect...")

			
			tcp_client_cmd("WIFI disconnect\r\n")
			R.state = 0
			
			-- himedia off
			
			
			
			--switch wifi
			local ret_switch = string.find(data, "No such file or directory")
			if ret_switch then
				return 2
			end
		end	
		return 1
	end	
end

function get_network_list()
	local ret = 0

    local file = io.popen('wpa_cli -i ra0 list_network')
    if not file then return nil end
    local data = file:read('*a')
    file:close()

    local ret = data:match('0')
    if ret == nil then
		os.execute('wpa_cli -i ra0 add_network')
    end
	
	return ret
end

function try_connect(ssid, psk)

	local network_list = get_network_list()
	if network_list == nil then return nil end
	
	print('wifi is connecting '..network_list..' ssid: '..ssid..', psk: '..psk)
	R.is_connect = 0
	
	os.execute('wpa_cli -i ra0 set_network '..network_list..' key_mgmt WPA-PSK')
	
	local file
	local rsp
	local data
	
	file = io.popen('wpa_cli set_network '..network_list..' ssid \'"'..ssid..'"\'')
	data = file:read('*a')
	file:close()
	rsp = data:match('OK')
    if rsp == nil then print('set network ssid error!!!') return end	


	file = io.popen('wpa_cli set_network '..network_list..' psk \'"'..psk..'"\'')
	data = file:read('*a')
	file:close()
    rsp = data:match('OK')
    if rsp == nil then 
		print('set network psk error!!!') 
		clean_wifi_config()
		return 
	end	

	os.execute('wpa_cli -i ra0 enable_network '..network_list)
	local ret
	
	Sleep(3)
	
	while true do
		wifi_light_on()
		ret = check_wpa_status()
		Sleep(1)
		if (ret == 1) then
			wifi_light_off()
			if (R.is_connect == 0) then
				clean_wifi_config()
				return nil
			end
		end	
		if (ret == 2) then
			--中途修改wifi，则不清空db
			wifi_light_off()
			return nil
		end		
		
	end

end



function loop_start()
    local info = get_wifi_config()
    local ssid = info.ssid
    local psk = info.password
	
    if (ssid ~= '') and (psk ~= '') then
		if ( R.blood ~= 2 ) then
			os.execute("cd /lib/modules/mt7601u;./switch_sta.sh;cd -")
			R.blood = 2;
		end
		
		check_wpa_file()
		check_wpa_process()
		
		try_connect(ssid, psk)

	else	
		if ( R.blood ~= 1 ) then
			os.execute("cd /lib/modules/mt7601u;./switch_ap.sh;cd -")
			R.blood = 1;
		end		
    end
end



function main()	
	os.execute("ifconfig eth0 down")
	wifi_light_off()

	while true do
		loop_start()
		Sleep(1)
		
	end

end


main()
