USER=$(cat /etc/passwd |grep "/home" |cut -d: -f1)
usermod -s /bin/zsh $USER
chsh $USER -s /bin/zsh

pacman-key --init archlinux
pacman-key --populate archlinux
pacman-key --init apricity
pacman-key --populate apricity

getent passwd | while IFS=: read -r name password uid gid gecos home shell; do
    echo "$name's home directory is $home"
    top=${home#/}; top=${top%%/*}
    case $top in
        bin|dev|etc|lib*|no*|proc|sbin|usr|var|root) echo "Looks like a system user";;
        *) su ${name} -c 'freezedry --load /etc/freezedry/default.toml --user';;
    esac
done

sed -i 's/auth		sufficient	pam_wheel.so trust use_uid/#auth		sufficient	pam_wheel.so trust use_uid/g' /etc/pam.d/su
yes | freezedry --load /etc/freezedry/default.toml --root --disable pacman
