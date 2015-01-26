!/bin/sh
test -z $1 && echo "Disk's name required!" 1>&2 && exit 1
sgdisk -n 1:0:256M -c 1:"EFI System" -t 1:ef00 -n 2: -c 2:"Linux filesystem" -t 2:8e00 /dev/$1
mkfs.fat -F32 /dev/$1\1; mkfs.ext4 /dev/$1\2


