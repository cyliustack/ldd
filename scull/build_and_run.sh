#!/bin/sh
## [Environment]
## linux distro version: Fedora 25
## linux kernel version: 4.10.10
## gcc version: 6.3.1 
## gcc-c++ version: 6.3.1

## [Build]
make

## [Install]
sudo cp scull.ko /lib/modules/$(uname -r)
sudo depmod -a
sudo rmmod scull
sudo modprobe scull
dmesg | tail 
modinfo scull 
