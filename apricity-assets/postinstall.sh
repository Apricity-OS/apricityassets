rm -f /etc/gdm/custom.conf
USER=$(cat /etc/passwd |grep "/home" |cut -d: -f1)
usermod -s /bin/zsh $USER
# sed -i /etc/pam.d/su -e 's/.*wheel/#&/'
pacman-key --init archlinux
pacman-key --populate archlinux
pacman-key --init apricity
pacman-key --populate apricity
