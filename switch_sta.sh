#!/bin/sh

killall udhcpd
ifconfig ra0 down
sleep 1
rmmod rtnet7601Uap.ko
sleep 1
rmmod mt7601Uap.ko
rmmod rtutil7601Uap.ko


###############################
#	set wifi to ap mode
###############################
insmod mtutil7601Usta.ko
insmod mt7601Usta.ko
insmod mtnet7601Usta.ko

wpa_supplicant -D wext -i ra0 -c /etc/wpa_supplicant.conf -B
