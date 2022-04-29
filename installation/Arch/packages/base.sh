ln -sf /usr/share/zoneinfo/Asia/Tehran /etc/localtime
hwclock --systohc
# sed -i '178s/.//' /etc/locale.gen
# locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "ali-arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 ali-arch.localdomain ali-arch" >> /etc/hosts


sudo pacman -S grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font acpilight

# paru -S libwnck3 mesa-utils xf86-input-libinput xorg-xdpyinfo xorg-server xorg-xinit xorg-xinput xorg-xkill xorg-xrandr xf86-video-amdgpu xf86-video-ati xf86-video-intel b43-fwcutter broadcom-wl-dkms dhclient dialog dnsmasq dnsutils ethtool gnu-netcat ipw2100-fw ipw2200-fw iwd modemmanager nbd ndisc6 networkmanager networkmanager-openvpn nmap nss-mdns openconnect openvpn ppp pptpclient rp-pppoe sshfs usb_modeswitch vpnc whois wireless-regdb wireless_tools wpa_supplicant xl2tpd firewalld bluez bluez-utils downgrade pacman-contrib pkgfile rebuild-detector reflector yay accountsservice bash-completion ffmpegthumbnailer gst-libav gst-plugin-pipewire gst-plugins-bad gst-plugins-ugly libdvdcss libgsf libopenraw mlocate poppler-glib xdg-user-dirs xdg-utils efitools haveged nfs-utils nilfs-utils ntp smartmontools unrar unzip xz adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts cantarell-fonts freetype2 noto-fonts ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans alsa-firmware alsa-plugins alsa-utils pavucontrol pipewire-pulse pipewire-media-session pipewire-alsa pipewire-jack amd-ucode dmidecode dmraid hdparm hwdetect intel-ucode lsscsi mtools sg3_utils sof-firmware power-profiles-daemon upower reflector-simple welcome duf findutils fsarchiver git glances hwinfo inxi meld nano-syntax-highlighting neofetch pv python-defusedxml python-packaging rsync tldr sed vi wget


pacman -S --noconfirm xf86-video-amdgpu
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ArchLinux 
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m ali
usermod -aG libvirt ali wheel

