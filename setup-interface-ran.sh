#!/usr/bin/env bash

sudo ip l add cu_e2f1_if type dummy
sudo ip l add du_e2f1_if type dummy
sudo ifconfig cu_e2f1_if 192.168.200.21 up
sudo ifconfig du_e2f1_if 192.168.200.22 up

echo "Please add route from E2T_POD_IP"
echo "sudo route add -host <E2T_POD_IP> gw 192.168.10.22"
