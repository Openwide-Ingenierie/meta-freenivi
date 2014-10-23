SUMMARY = "Autologin tool"
DESCRIPTION = "A simple tool to autologin based on systemd rules"
PACKAGES = "${PN}"
PR = "r0"

LICENSE = "MIT"

DEPENDS = "sed-native"
RDEPENDS_${PN} = "systemd"

SRC_URI = " \
           file://autologin@.service \
           "

LIC_FILES_CHKSUM = " \
                    file://${WORKDIR}/autologin@.service;md5=691885ec6c1142d5883a88725ee1f96c"
                    "

S = "${WORKDIR}"

AUTOLOGIN_USERNAME ?= "root"
AUTOLOGIN_TTY ?= tty1

do_install () {
  install -d 0755 ${D}/lib/systemd/system
  install -m 0644 ${WORKDIR}/autologin@.service ${D}/lib/systemd/system
  sed -i 's/@@USERNAME@@/${AUTOLOGIN_USERNAME}/' ${D}/lib/systemd/system/autologin@.service
}

pkg_postinst_${PN} () {
  rm -rf /etc/systemd/system/getty.target.wants/getty@${AUTOLOGIN_TTY}.service
  ln -s ${systemd_unitdir}/system/autologin@.service /etc/systemd/system/getty.target.wants/getty@${AUTOLOGIN_TTY}.service
}

pkg_prerm_${PN} () {
  rm -rf /etc/systemd/system/getty.target.wants/getty@${AUTOLOGIN_TTY}.service
  ln -s ${systemd_unitdir}/system/getty@.service /etc/systemd/system/getty.target.wants/getty@${AUTOLOGIN_TTY}.service
}

PACKAGES = "${PN}"
FILES_${PN} = "/lib/systemd/system/autologin@.service"
