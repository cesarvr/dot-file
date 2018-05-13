#!/bin/bash

#bumblebee-fedora with nvidia-drivers unmanaged
echo "== Installing Bumblebee =="

sudo dnf copr enable chenxiaolong/bumblebee
sudo dnf install akmod-bbswitch bumblebee primus
sudo gpasswd -a $USER bumblebee
sudo systemctl enable bumblebeed
sudo systemctl disable nvidia-fallback
