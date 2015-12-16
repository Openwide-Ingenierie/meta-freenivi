FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://weston.sh \
"
SRC_URI_append_mx6 = " \
	file://FIX-gal2d-fbdev-backend.patch \
"

do_install_append() {
    install -d ${D}${sysconfdir}/profile.d/
    install -m 0644 ${WORKDIR}/weston.sh ${D}${sysconfdir}/profile.d/weston.sh
}

FILES_${PN} += " \
    ${sysconfdir}/profile.d/weston.sh \
"
