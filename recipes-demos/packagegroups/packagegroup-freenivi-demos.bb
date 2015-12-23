DESCRIPTION = "Freenivi development demo package group."
LICENSE = " "

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'packagegroup-freenivi-demos-wayland', '', d)} \
	${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'packagegroup-freenivi-demos-x11', '', d)} \
"

SUMMARY_packagegroup-freenivi-demos-wayland = ""
RDEPENDS_packagegroup-freenivi-demos-wayland = " \
	demos-wayland \
"

SUMMARY_packagegroup-freenivi-demos-x11 = "Install openbox + demos apps for X11"
RDEPENDS_packagegroup-freenivi-demos-x11 = " \
	demos-x11 \
"
