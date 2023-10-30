#!/bin/sh
sudo systemctl restart systemd-timesyncd.service
sleep 1
timedatectl show-timesync
