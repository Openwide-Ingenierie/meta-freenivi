SUMMARY = "glmark2 is an OpenGL 2.0 and ES 2.0 benchmark."
LICENSE = "GPLv3"
SRC_URI = "git://github.com/glmark2/glmark2.git"
SRCREV="fa71af2dfab711fac87b9504b6fc9862f44bf72a"

LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"

S = "${WORKDIR}/git"


DEPENDS = "python libpng virtual/egl virtual/libgl virtual/libgles2"
DEPENDS += " ${@base_contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
#DEPENDS += " ${@base_contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"

#./waf configure --with-flavors=<drm-gl,drm-glesv2,mir-gl,mir-glesv2,wayland-gl,wayland-glesv2,x11-gl,x11-glesv2> [--data-path=DATA_PATH --prefix=PREFIX]
do_configure() {
    if [ "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}" = "x11" ]; then
        ${S}/./waf configure --with-flavors=x11-glesv2 --prefix=/usr
    else
        ${S}/./waf configure --with-flavors=wayland-glesv2 --prefix=/usr
    fi
}

do_compile() {
    ${S}/./waf
    #change to generic name
    mv ${S}/build/src/glmark2-* ${S}/build/src/glmark2
}

do_install() {
    install -d ${D}${bindir}
    install -m 0644 ${S}/build/src/glmark2 ${D}${bindir}
    chmod a+x ${D}${bindir}/glmark2

    install -d ${D}${datadir}/glmark2
    install -d ${D}${datadir}/man
    install -d ${D}${datadir}/man/man1
    install -d ${D}${datadir}/glmark2/models
    install -d ${D}${datadir}/glmark2/shaders
    install -d ${D}${datadir}/glmark2/textures

    cp ${S}/data/models/* ${D}${datadir}/glmark2/models
    cp ${S}/data/shaders/* ${D}${datadir}/glmark2/shaders
    cp ${S}/data/textures/* ${D}${datadir}/glmark2/textures
    cp ${S}/build/doc/glmark2-* ${D}${datadir}/man/man1
}

FILES_${PN} = " \
    ${bindir}/glmark2 \
    ${datadir}/glmark2 \
    ${datadir}/man \
    ${datadir}/man/man1 \
    ${datadir}/glmark2/models \
    ${datadir}/glmark2/shaders \
    ${datadir}/glmark2/textures \
"
