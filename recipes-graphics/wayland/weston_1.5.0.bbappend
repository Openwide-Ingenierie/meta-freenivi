FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI_append = " \
    file://weston.service \
    file://weston.ini \
    file://.profile \
    file://qtwebbrowser.png \
    "

inherit systemd

SYSTEMD_SERVICE_${PN} = "weston.service"

do_install_append () {

    # install weston systemd service file
    install -d ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/weston.service ${D}${systemd_unitdir}/system
    # install weston.ini and .profile for root and logo for qtwebbrowser
    install -d ${D}${ROOT_HOME}
    install -m 0644 ${WORKDIR}/weston.ini ${D}${ROOT_HOME}/weston.ini
    install -m 0644 ${WORKDIR}/.profile ${D}${ROOT_HOME}/.profile
    install -m 0644 ${WORKDIR}/qtwebbrowser.png ${D}${ROOT_HOME}/qtwebbrowser.png
}

FILES_${PN}_append = " \
    ${systemd_unitdir}/system/weston.service \
    ${ROOT_HOME}/* \
    ${ROOT_HOME}/.profile \
    "
