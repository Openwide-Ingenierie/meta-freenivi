DESCRIPTION = "QML Demo"

LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://main.cpp;endline=19;md5=a7a911d142a6375fe98d566369f3d2a2"

SRC_URI = " \
    git://gitorious.org/qmlshowcase/qmlshowcase.git \
    file://0001-demo7-remove-useless-attributes-that-create-warnings.patch \
    file://0002-fix-menu-button-color.patch \
    file://0003-fix-naming-of-menu-root.patch \
    file://0004-fix-path-for-translations.patch \
"

SRCREV = "b730f9d8200cbb9a5b0a7e01d73357796aed355b"

PV = "0.1+git${SRCPV}"

S = "${WORKDIR}/git/"

DEPENDS = "qtbase qtdeclarative"

inherit qmake5

FILES_${PN} += " \
    /opt/qmlshowcase/qml \
    /opt/qmlshowcase/bin/qmlshowcase \ 
    /opt/qmlshowcase/translations \
"
FILES_${PN}-dbg += "/opt/qmlshowcase/bin/.debug"

RDEPENDS_${PN} = " \
    qtdeclarative-qmlplugins \
    qt3d-qmlplugins \
    qtmultimedia-qmlplugins \
    qtquickcontrols-qmlplugins \
"
