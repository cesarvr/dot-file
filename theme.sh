#!/bin/bash

#installing theme

wget https://dl.opendesktop.org/api/files/download/id/1505361900/Ant-Dracula.tar.xz
wget https://dl.opendesktop.org/api/files/download/id/1505361886/Ant.tar.xz
wget https://dl.opendesktop.org/api/files/download/id/1505361895/Ant-Bloody.tar.xz 
wget https://dl.opendesktop.org/api/files/download/id/1505352553/Deepin.zip

mkdir -p $HOME/.themes/
mkdir -p $HOME/.icons/

tar -xf Ant-Dracula.tar.xz -C $HOME/.themes/
tar -xf Ant-Bloody.tar.xz -C $HOME/.themes/
tar -xf Ant.tar.xz -C $HOME/.themes/
unzip Deepin.zip -d $HOME/.icons/

rm *.tar.xz
rm *.zip
