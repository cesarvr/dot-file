#!/bin/bash
#Install useful packages and add nice fusion repos and bumblebee. 


#fusion repos
echo "== Fusion repos =="
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#bumblebee-fedora with nvidia-drivers unmanaged
echo "== Bumblebee repos =="

sudo dnf -y --nogpgcheck install http://install.linux.ncsu.edu/pub/yum/itecs/public/bumblebee/fedora$(rpm -E %fedora)/noarch/bumblebee-release-1.2-1.noarch.rpm http://install.linux.ncsu.edu/pub/yum/itecs/public/bumblebee-nonfree/fedora$(rpm -E %fedora)/noarch/bumblebee-nonfree-release-1.2-1.noarch.rpm

#initial packages
sudo dnf install util-linux-user zsh sqlite vim gconf-editor.x86_64 steam bumblebee-nvidia bbswitch-dkms VirtualGL.x86_64 VirtualGL.i686 primus.x86_64 primus.i686 kernel-devel clang cmake playonlinux gnome-tweak-tool playonlinux.x86_64 google-droid-kufi-fonts.noarch google-droid-sans-fonts.noarch google-droid-serif-fonts.noarch google-droid-sans-mono-fonts.noarch python2-pygpgme.x86_64 dropbox transmission-gtk.x86_64 numix-icon-theme-circle-0.1.0-12.gitc3aefdb.fc26.noarch arc-theme-20170302-4.fc26.noarch python2-devel-2.7.13-10.fc26.i686


#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#gnome-theme do add_theme to change the theme
printf "function add_theme(){ wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh }" >> ~/.zshrc


# nvidia-driver blog in  /etc/sysconfig/nvidia/
#echo "== Downloading nvidia-blob =="
#wget http://us.download.nvidia.com/XFree86/Linux-x86_64/384.59/NVIDIA-Linux-x86_64-384.59.run -O /etc/sysconfig/nvidia/NVIDIA-Linux-x86_64-384.59.run
