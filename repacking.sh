#!/system/bin/sh

#functions
rm -rf split_img/ramdisk.cpio
cd ramdisk
find . | cpio -o > ../split_img/ramdisk.cpio
cd ..
cd split_img
./magiskboot repack boot.img
mv new-boot.img boot.img
mv boot.img ..
cd ..
rm -rf ramdisk
rm -rf split_img