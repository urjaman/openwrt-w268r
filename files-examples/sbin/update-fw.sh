#!/bin/sh -x
cd ~
save-config
scp YOUR-USER@YOUR-PC:openwrt-w268r/bin/targets/ramips/rt305x-uClibc/openwrt-ramips-rt305x-w268r-initramfs-kernel.bin owrt1.bin && flashcp -v owrt1.bin /dev/mtd3
rm -f owrt1.bin
