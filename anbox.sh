#!/bin/bash
sudo apt install software-properties-common
sudo add-apt-repository ppa:morphis/anbox-support
sudo apt update
sudo apt install linux-headers-generic anbox-modules-dkms
sudo modprobe ashmem_linux
sudo mkdir /dev/binderfs
sudo mount -t binder binder /dev/binderfs
ls -1 /dev/{ashmem,binder}
sudo snap install --devmode --beta anbox
sudo snap refresh --beta --devmode anbox
sudo anbox session-manager

