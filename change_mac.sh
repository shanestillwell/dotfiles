#!/bin/bash

ORIGINAL=54:26:96:dd:3f:bf;
NEWMAC=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//');

if [ $1 == 'o' ]
then
    MAC=$ORIGINAL;
else
    MAC=$NEWMAC;
fi

echo 'Changing MAC to $MAC';

sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -z;
sudo ifconfig en0 ether $MAC;
networksetup -detectnewhardware
