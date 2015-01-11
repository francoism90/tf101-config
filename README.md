TF101 ArchLinux
==================

* Copy of kernel https://github.com/jmrohwer/TF101-GNU-kernel (http://forum.xda-developers.com/showthread.php?t=2347581), but patched for internal eMMC. (boot.img)
* wheelie and flashing tools created by https://www.androidroot.mobi
* Using [TrimSlice](http://archlinuxarm.org/platforms/armv7/nvidia/trimslice) image as rootfs
* For more information: http://forum.xda-developers.com/showthread.php?t=1537566

Root-fs (archlinux.img)
-----------

    $ wget http://archlinuxarm.org/os/ArchLinuxARM-trimslice-latest.tar.gz
    $ fallocate -l 800M archlinux.img
    $ mkfs.ext4 -F archlinux.img
    # mkdir /mnt/arch
    # mount archlinux.img /mnt/arch
    # bsdtar -xpf ArchLinuxARM-trimslice-latest.tar.gz -C /mnt/arch
    # umount /mnt/arch

Flash (TF101 SBK2)
-----------

    # ./wheelie -2 -o 0x300d8011 --bl bootloader.bin -c transformer.bct
    # ./reflash_sbkv2.sh
    # ./nvflash -r --download 6 boot.img
    # ./nvflash -r --download 7 archlinux.img
    # ./nvflash -r --go

Note: You may need to reboot couple of times, before it works correctly.

Reclaim filesystem space
-----------
Peform the following command after booting the tablet:

    # resize2fs /

WiFi-firmware
-----------
* Firmware: http://wireless.kernel.org/en/users/Drivers/brcm80211
* nvram: https://raw.githubusercontent.com/mattlgroff/cwm/master/asus/tf101/prebuilt/etc/nvram_4329.txt

Perform the following commands:

    # cp /lib/firmware/bcm4329/fw_bcm4329.bin /lib/firmware/bcm4329/fw_bcmdhd.bin
    # depmod -a
    # systemctl reboot
    
After reboot:

    # wifi-menu wlan0
    
