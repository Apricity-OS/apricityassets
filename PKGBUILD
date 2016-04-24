#Maintainer: Alex Gajewski <agajews@gmail.com>

_pkgname='Apricity Assets'
pkgname=apricityassets
pkgver=0.2.12
pkgrel=1
pkgdesc='Assets for Apricity OS'
arch=(any)
license=(GPL)
url="https://github.com/Apricity-OS/apricityassets"
depends=('kdebase-runtime' 'icedtea-web')
source=("apricityassets.tar.gz")
sha256sums=('SKIP')
install=apricityassets.install

package() {
	mkdir -p "${pkgdir}/usr/share/etc"
	mkdir -p "${pkgdir}/usr/share/gnome-shell/extensions"
	mkdir -p "${pkgdir}/etc/skel"
	mkdir -p "${pkgdir}/usr/share/plymouth/themes"
	cp -rf "${srcdir}/apricityassets/apricity-assets" "${pkgdir}/etc"
	cp -rf ${srcdir}/apricityassets/extensions/* "${pkgdir}/usr/share/gnome-shell/extensions"
	cp -rf "${srcdir}/apricityassets/.liquidprompt" "${pkgdir}/etc/skel"
	cp -rf "${srcdir}/apricityassets/plymouth/apricity" "${pkgdir}/usr/share/plymouth/themes"
	mkdir -p "${pkgdir}/etc/skel/.config/autostart"
	mkdir -p "${pkgdir}/etc/gdm"
	mkdir -p "${pkgdir}/etc/sudoers.d"
	chmod 750 -R "${pkgdir}/etc/sudoers.d"
	cp -f "${srcdir}/apricityassets/firstrun.sh" "${pkgdir}/etc/skel/.config/autostart"
	cp -f "${srcdir}/apricityassets/firstrun.desktop" "${pkgdir}/etc/skel/.config/autostart"
	cp -f "${srcdir}/apricityassets/g_wheel" "${pkgdir}/etc/sudoers.d"
}
