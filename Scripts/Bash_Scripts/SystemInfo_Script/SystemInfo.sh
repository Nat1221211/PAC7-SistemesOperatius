#!/bin/bash

echo "Machine Name"
sudo hostname
echo
echo "Kernel Version"
uname -r
echo
echo "Kernel Name"
uname -s
echo
echo "Hardware Architecture"
uname -m
echo
echo "Linux Version"
lsb_release -a
echo
echo "Hardware Info"
lshw
echo
echo "Ethernet Info"
ip addr show

