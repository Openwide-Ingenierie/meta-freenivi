SUMMARY = "Demo image configuration for X11"
DESCRIPTION = "Meta package that add to the image everything for an X11 demo"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;endline=19;md5=872ee2b4639e730fc3187ab05f04457f"

SRC_URI = " \
    file://COPYING \
    file://xinitrc \
    file://x11.sh \
    file://menu.xml \
    file://autostart \
    file://background \
"

S = "${WORKDIR}"

do_install_append() {
    install -d ${D}${sysconfdir}/profile.d
    install -m 0755 x11.sh ${D}${sysconfdir}/profile.d
    install -d ${D}/home/root
    install -m 0644 xinitrc ${D}/home/root/.xinitrc
    install -d ${D}/home/root/.config/openbox
    install -m 0644 menu.xml ${D}/home/root/.config/openbox
    install -m 0755 autostart ${D}/home/root/.config/openbox
    install -m 0644 background ${D}/home/root/.config/openbox
}

FILES_${PN} += " \
    ${sysconfdir}/profile.d/x11 \
    /home/root/ \
"

RDEPENDS_${PN} = "cinematicexperience elemines openbox openbox-theme-clearlooks feh xinit"
