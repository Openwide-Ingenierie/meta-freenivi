SUMMARY = "Autologin tool"
DESCRIPTION = "A simple tool to autologin based on systemd rules"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=872ee2b4639e730fc3187ab05f04457f"

DEPENDS = "sed-native"

SRC_URI = " \
    file://autologin@.service \
    file://COPYING \
"

S = "${WORKDIR}"

AUTOLOGIN_USERNAME ?= "root"
AUTOLOGIN_TTY ?= "tty1"

do_install () {
  install -d 0755 ${D}${systemd_unitdir}/system
  install -m 0644 ${WORKDIR}/autologin@.service ${D}${systemd_unitdir}/system
  sed -i 's/@@USERNAME@@/${AUTOLOGIN_USERNAME}/' ${D}${systemd_unitdir}/system/autologin@.service
}

pkg_postinst_${PN} () {
  rm -rf ${sysconfdir}/systemd/system/getty.target.wants/getty@${AUTOLOGIN_TTY}.service
  ln -s ${systemd_unitdir}/system/autologin@.service ${sysconfdir}/systemd/system/getty.target.wants/getty@${AUTOLOGIN_TTY}.service
}

pkg_prerm_${PN} () {
  rm -rf ${sysconfdir}/systemd/system/getty.target.wants/getty@${AUTOLOGIN_TTY}.service
  ln -s ${systemd_unitdir}/system/getty@.service ${sysconfdir}/systemd/system/getty.target.wants/getty@${AUTOLOGIN_TTY}.service
}

FILES_${PN} = "${systemd_unitdir}/system/autologin@.service"

RDEPENDS_${PN} = "systemd"
