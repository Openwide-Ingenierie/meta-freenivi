FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI_append = " \
    file://.profile \
    file://weston.ini \
    file://qtwebbrowser.png \
"

do_install_append () {
    install -d ${D}${ROOT_HOME}
    install -m 0644 ${WORKDIR}/.profile ${D}${ROOT_HOME}/.profile
    install -m 0644 ${WORKDIR}/weston.ini ${D}${ROOT_HOME}/weston.ini
    install -m 0644 ${WORKDIR}/qtwebbrowser.png ${D}${ROOT_HOME}/qtwebbrowser.png
}

FILES_${PN}_append = " \
    ${ROOT_HOME}/.profile \
    ${ROOT_HOME}/* \
"
