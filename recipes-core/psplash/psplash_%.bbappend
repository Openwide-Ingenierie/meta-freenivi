FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
DEPENDS += "gdk-pixbuf-native"

inherit systemd
SYSTEMD_SERVICE_${PN} = " ${PN}.service"

# patch 0003-delete-progress-bar.patch will be removed when systemd will be able to
# communicate its boot progress status to psplash app. 

SRC_URI += " \
    file://0002-add-freenivi-logo.patch \
    file://0003-delete-progress-bar.patch \
    file://psplash-logo.jpg \
    file://${PN}.service \
"

do_configure_append () {
	cd ${S}
	cp ../psplash-logo.jpg ./psplash-logo.jpg
	./make-image-header.sh ./psplash-logo.jpg LOGO
	mv ./psplash-logo.jpg-img.h ./psplash-logo-img.h
}

do_install_append () {
    install -d 0755 ${D}${systemd_unitdir}/system
	install -m 0644 ${WORKDIR}/${PN}.service ${D}${systemd_unitdir}/system/
}

# Erase psplash's pkg_postinst which masks psplash from systemd
pkg_postinst_${PN} () {
}
