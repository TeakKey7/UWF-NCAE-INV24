#!/bin/bash

read -p "File path: " path
cat $path
read -p "Would you like to overwrite this file? y/n: " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]];
then
echo
read -p "IP/mask (192.168.0.1/24): " ip
read -p "Gateway: " gateway
ip a
read -p "Interface: " int

echo "# Let NetworkManager manage all devices on this system" > $path
echo "network:" >> $path
echo "  version: 2" >> $path
echo "  renderer: NetworkManager" >> $path
echo "    ethernets:" >> $path
echo "      $int:" >> $path
echo "        addresses:" >> $path
echo "          - $ip" >> $path
echo "        gateway4: $gateway" >> $path
fi

