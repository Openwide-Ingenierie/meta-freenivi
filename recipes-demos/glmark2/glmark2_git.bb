LICENSE = "GPLv3"
SRC_URI = "git://github.com/glmark2/glmark2.git"
SRCREV="fa71af2dfab711fac87b9504b6fc9862f44bf72a"

LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"

S = "${WORKDIR}/git"


DEPENDS = "python libpng virtual/egl virtual/libgl virtual/libgles2"
DEPENDS += " ${@base_contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"


#./waf configure --with-flavors=<drm-gl,drm-glesv2,mir-gl,mir-glesv2,wayland-gl,wayland-glesv2,x11-gl,x11-glesv2> [--data-path=DATA_PATH --prefix=PREFIX]
do_configure() {
    ${S}/./waf configure --with-flavors=wayland-glesv2 --prefix=/usr
}

do_compile() {
    ${S}/./waf
}

do_install() {
    install -d ${D}/${bindir}
    install -m 0644 ${S}/build/src/glmark2-es2-wayland ${D}/${bindir}
    chmod a+x ${D}/${bindir}/glmark2-es2-wayland

    install -d ${D}/usr/share
    install -d ${D}/usr/share/glmark2
    install -d ${D}/usr/share/man
    install -d ${D}/usr/share/man/man1
    install -d ${D}/usr/share/glmark2/models
    install -d ${D}/usr/share/glmark2/shaders
    install -d ${D}/usr/share/glmark2/textures

    cp ${S}/data/models/* ${D}/usr/share/glmark2/models
    cp ${S}/data/shaders/* ${D}/usr/share/glmark2/shaders
    cp ${S}/data/textures/* ${D}/usr/share/glmark2/textures
    cp ${S}/build/doc/glmark2-es2-wayland.1 ${D}/usr/share/man/man1
}

FILES_glmark2 = ""
