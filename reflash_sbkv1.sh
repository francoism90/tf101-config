#!/bin/sh
ISINCLUDED=1
. ./checkfiles.sh

./wheelie -1 --bl bootloader.bin --bct transformer.bct --odm 0x300d8011 || break
./nvflash -r --bct transformer.bct --setbct --configfile flash.cfg --create --odmdata 0x300d8011 --sync || break
./nvflash -r --go || break
