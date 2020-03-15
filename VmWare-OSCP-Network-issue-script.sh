#!/bin/bash

#After suspending and starting machine eth0 disapears.
#This scipt resolves that issue
#Sometimes you still need to restart networking after starting VM
#/etc/init.d/networking restart

#Author: Radolab https://github.com/radolab

echo "#VwWare network issue solution">>/etc/network/interfaces
echo "auto eth0">>/etc/network/interfaces
echo "iface eth0 inet dhcp">>/etc/network/interfaces
/etc/init.d/networking restart
echo "Done!"
