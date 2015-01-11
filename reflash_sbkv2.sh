#!/bin/sh
ISINCLUDED=1
. ./checkfiles.sh

./wheelie -2 --bl bootloader.bin --bct transformer.bct --odm 0x300d8011
./nvflash -r --bct transformer.bct --setbct --configfile flash.cfg --create --odmdata 0x300d8011 --sync
./nvflash -r --go
