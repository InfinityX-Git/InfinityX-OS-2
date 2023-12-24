#!/usr/bin/bash

cd ../bootloader

sudo nasm -f bin bootloader.asm -o bootloader.bin
sudo dd if=bootloader.bin of=bootable.img bs=512 count=1

cd ../scripts
