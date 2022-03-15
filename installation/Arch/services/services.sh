sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth
sudo systemctl enable cups.service
sudo systemctl enable sshd
sudo systemctl enable avahi-daemon
sudo systemctl enable reflector.timer
sudo systemctl enable fstrim.timer
sudo systemctl enable libvirtd
sudo systemctl enable firewalld
sudo systemctl enable acpid
systemctl enable --user pipewire-pulse pipewire
