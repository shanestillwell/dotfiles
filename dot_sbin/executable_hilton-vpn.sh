#!/bin/bash

SERVICE="openconnect"

if pgrep -x "$SERVICE" >/dev/null
then
  kill -s SIGINT $(pgrep openconnect)
else
  openconnect --background --authgroup AnyConnect-HWW-Group -u sstillwell --script /usr/local/etc/vpnc-script aloha.hilton.com --token-mode=rsa
fi
