#Particionar el disco, formatear y montar

#pacstrap /mnt base 
#genfstab -U /mnt >> /mnt/etc/fstab
#arch-chroot /mnt
pacman -S vim reflector textinfo git python qtile alacritty man-db man-pages python-pip tmux\
dhcpcd grub afibootmgr gcc --noconfirm
reflector --latest 10 --sort rate --protocol HTTPS -save /etc/pacman.d/mirrorlist
ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
hwclock --systohc

#Editar locale.gem para determinar el idioma del sistema
#/etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo $HOSTNAME >> /etc/hostname

#change root passwd
passwd

#instalal grub
