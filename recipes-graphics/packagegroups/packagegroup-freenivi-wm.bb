DESCRIPTION = "Window Manager for freenivi."
LICENSE = " "

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'packagegroup-freenivi-compiz', '', d)} \
"

SUMMARY_packagegroup-freenivi-compiz = ""
RDEPENDS_packagegroup-freenivi-compiz = " \
	compiz-main \
	compiz-main-dev \
	compiz-main-staticdev \
	libcompizconfig \
	libcompizconfig-dev \
	compiz-config \
	compiz-config-staticdev \
"

