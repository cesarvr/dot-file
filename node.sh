#!/bin/bash 

wget https://nodejs.org/dist/v6.11.3/node-v6.11.3-linux-x64.tar.xz 

mkdir -p ~/.tools
tar -xf node-v6.11.3-linux-x64.tar.xz -C ~/.tools/ 
rm node-v6.11.3-linux-x64.tar.xz 
