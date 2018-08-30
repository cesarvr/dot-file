#!/bin/bash 

mkdir -p ~/.tools
wget  https://nodejs.org/dist/v8.11.4/node-v8.11.4-linux-x64.tar.xz 

tar -xf node-v8.11.4-linux-x64.tar.xz -C ~/.tools/ 

rm node-v8.11.4-linux-x64.tar.xz
