ln -sf /usr/share/zoneinfo/Asia/Tehran /etc/localtime
hwclock --systohc
#sed -i '178s/.//' /etc/locale.gen
#locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "ali-arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 ali-arch.localdomain ali-arch" >> /etc/hosts


sudo pacman -S grub efibootmgr networkmanager network-manager-applet dialog dosfstools base-devel linux-headers avahi xdg-utils gvfs gvfs-smb inetutils dnsutils cups hplip openssh reflector acpi acpi_call edk2-ovmf bridge-utils vde2 iptables-nft ipset flatpak acpid os-prober ntfs-3g terminus-font acpilight libwnck3 mesa-utils xf86-input-libinput xorg-xdpyinfo xorg-server xorg-xinit xorg-xinput xorg-xkill xorg-xrandr xf86-video-amdgpu xf86-video-ati xf86-video-intel b43-fwcutter broadcom-wl-dkms dhclient dnsmasq ethtool gnu-netcat ipw2100-fw ipw2200-fw iwd modemmanager nbd ndisc6 networkmanager-openvpn nmap nss-mdns openconnect openvpn ppp pptpclient rp-pppoe sshfs usb_modeswitch vpnc whois wireless-regdb wireless_tools wpa_supplicant xl2tpd firewalld bluez bluez-utils pacman-contrib pkgfile rebuild-detector accountsservice bash-completion libopenraw mlocate poppler-glib xdg-user-dirs efitools haveged nfs-utils nilfs-utils ntp smartmontools unrar unzip xz amd-ucode dmidecode dmraid hdparm hwdetect intel-ucode lsscsi mtools sg3_utils sof-firmware power-profiles-daemon upower duf findutils fsarchiver git glances hwinfo meld nano-syntax-highlighting neofetch pv python-defusedxml python-packaging rsync tldr sed vi wget

#pacman -S --noconfirm xf86-video-amdgpu
#pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux 
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m ali
usermod -aG wheel ali
