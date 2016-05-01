USER=$(cat /etc/passwd |grep "/home" |cut -d: -f1)
usermod -s /bin/zsh $USER
chsh $USER -s /bin/zsh
