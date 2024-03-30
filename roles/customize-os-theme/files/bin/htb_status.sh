#!/bin/sh

ICONCOLOR=e53935

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
	echo "%{F#$ICONCOLOR} %{F#ffffff}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"
else
        echo "%{F#$ICONCOLOR}%{u-} Disconnected"
fi
