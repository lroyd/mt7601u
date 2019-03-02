#!/bin/sh

killall wpa_supplicant
sleep 1
rmmod mtnet7601Usta.ko
sleep 1
rmmod mt7601Usta.ko
rmmod mtutil7601Usta.ko


###############################
#	set wifi to ap mode
###############################
insmod rtutil7601Uap.ko
insmod mt7601Uap.ko
insmod rtnet7601Uap.ko

ifconfig ra0 192.168.2.1 netmask 255.255.255.0
udhcpd -f /etc/udhcpd.conf &
