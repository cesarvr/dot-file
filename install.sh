#!/bin/bash 

#install repositories 
sh install-repos.sh 


#initial packages
sudo dnf install -y util-linux-user zsh sqlite gconf-editor.x86_64 steam bumblebee-nvidia bbswitch-dkms VirtualGL.x86_64 VirtualGL.i686 primus.x86_64 primus.i686 kernel-devel clang cmake playonlinux gnome-tweak-tool playonlinux.x86_64 google-droid-kufi-fonts.noarch google-droid-sans-fonts.noarch google-droid-serif-fonts.noarch google-droid-sans-mono-fonts.noarch python2-pygpgme.x86_64 dropbox transmission-gtk.x86_64 numix-icon-theme-circle-0.1.0-12.gitc3aefdb.fc26.noarch arc-theme-20170302-4.fc26.noarch python2-devel-2.7.13-10.fc26.i686 mesa-vulkan-drivers mesa-vulkan-devel


#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#gnome-theme do add_theme to change the theme
printf "function add_theme(){ wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh }" >> ~/.zshrc


#fixing wifi/ethernet recovery
sudo cp ./alienware_pci_rescan.sh /lib/systemd/system-sleep/ 
sudo chmod +x /lib/systemd/system-sleep/alienware_pci_rescan.sh 

