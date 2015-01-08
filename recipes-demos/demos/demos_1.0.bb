SUMMARY = "Demo image configuration"
DESCRIPTION = "Meta package that add to the image everything for demos"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;endline=19;md5=872ee2b4639e730fc3187ab05f04457f"

SRC_URI = " \
    file://COPYING \
    file://weston.ini \
    file://browser.png \
    file://carrousel.png \
    file://cinematicexperience.png \
"

S = "${WORKDIR}"

do_install_append() {
    install -d ${D}${sysconfdir}/xdg/weston
    install -m 0644 ${WORKDIR}/weston.ini ${D}${sysconfdir}/xdg/weston/weston.ini
    sed -i "s%@libexecdir@%${libdir}/weston/%" ${D}${sysconfdir}/xdg/weston/weston.ini
    install -d ${D}${datadir}/weston
    install -m 0644 ${WORKDIR}/browser.png ${D}${datadir}/weston/browser.png
    install -m 0644 ${WORKDIR}/carrousel.png ${D}${datadir}/weston/carrousel.png
    install -m 0644 ${WORKDIR}/cinematicexperience.png ${D}${datadir}/weston/cinematicexperience.png
}


FILES_${PN} += " \
    ${sysconfdir}/xdg/weston \
    ${datadir}/weston \
"

RDEPENDS_${PN} = "weston qtwebkit-examples-examples carrousel cinematicexperience"
