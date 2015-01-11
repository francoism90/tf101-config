TF101 SBK2
./wheelie -2 -o 0x300d8011 --bl bootloader.bin -c transformer.bct
./nvflash -r --download 6 boot.img
./nvflash -r --download 7 archlinux.img
./nvflash -r --go
