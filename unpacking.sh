#!/system/bin/sh

#functions
mv boot.img bin
sh bin/make.sh
mkdir ramdisk
mkdir split_img
cp -frp bin/magiskboot split_img
mv boot.img split_img
cd split_img
./magiskboot unpack boot.img
cd ..
cd ramdisk
cpio -idm < ../split_img/ramdisk.cpio