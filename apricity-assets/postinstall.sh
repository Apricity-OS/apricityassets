rm -f /etc/gdm/custom.conf
USER=$(cat /etc/passwd |grep "/home" |cut -d: -f1)
usermod -s /bin/zsh $USER
# sed -i /etc/pam.d/su -e 's/.*wheel/#&/'
rm /etc/mkinitcpio-archiso.conf
