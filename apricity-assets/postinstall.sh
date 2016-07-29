rm -f /etc/gdm/custom.conf
USER=$(cat /etc/passwd |grep "/home" |cut -d: -f1)
usermod -s /bin/zsh $USER
# sed -i /etc/pam.d/su -e 's/.*wheel/#&/'
pacman-key --init archlinux
pacman-key --populate archlinux
pacman-key --init apricity
pacman-key --populate apricity

getent passwd | while IFS=: read -r name password uid gid gecos home shell; do
    echo "$name's home directory is $home"
    top=${home#/}; top=${top%%/*}
    case $top in
        |bin|dev|etc|lib*|no*|proc|sbin|usr|var) echo "Looks like a system user";;
        *) sudo -u ${name} freezedry --load /etc/freezedry/default.toml --user;;
    esac
done

freezedry --load /etc/freezedry/default.toml --root
