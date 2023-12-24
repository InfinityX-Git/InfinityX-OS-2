#!/usr/bin/bash

# Run the OS using Qemu.
# Make sure to install the dependencies first!

cd ../bootloader
sudo qemu-system-x86_64 -drive format=raw,file=bootable.img
cd ../scripts