Copy of kernel https://github.com/jmrohwer/TF101-GNU-kernel, but on intern eMMC.
See for more information: http://forum.xda-developers.com/showthread.php?t=1537566

TF101 SBK2 Commands:

    # ./wheelie -2 -o 0x300d8011 --bl bootloader.bin -c transformer.bct
    # ./nvflash -r --download 6 boot.img
    # ./nvflash -r --download 7 archlinux.img
    # ./nvflash -r --go
