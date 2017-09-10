#!/bin/bash

echo "coming back from sleep with param $1"
echo 1 > /sys/bus/pci/devices/0000\:00\:1c.4/rescan
echo 1 > /sys/bus/pci/devices/0000\:00\:1c.5/rescan
echo 1 > /sys/bus/pci/devices/0000\:00\:1c.6/rescan
