#!/bin/bash 

#fusion repos
echo "== Fusion repos =="
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#initial packages
sudo dnf install -y util-linux-user zsh sqlite gconf-editor.x86_64 steam clang cmake playonlinux gnome-tweak-tool playonlinux.x86_64 google-droid-kufi-fonts.noarch google-droid-sans-fonts.noarch google-droid-serif-fonts.noarch google-droid-sans-mono-fonts.noarch python2-pygpgme.x86_64 dropbox transmission-gtk.x86_64 numix-icon-theme-circle-0.1.0-12.gitc3aefdb.fc26.noarch arc-theme-20170302-4.fc26.noarch python2-devel-2.7.13-10.fc26.i686 mesa-vulkan-drivers mesa-vulkan-devel

#fixing wifi/ethernet recovery
sudo cp ./alienware_pci_rescan.sh /lib/systemd/system-sleep/ 
sudo chmod +x /lib/systemd/system-sleep/alienware_pci_rescan.sh 


#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


cp .zshrc ~/

