DESCRIPTION = "Freenivi package groups for intel platforms."
LICENSE = " "

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
    packagegroup-freenivi-intel-drivers \
"

SUMMARY_packagegroup-freenivi-intel-drivers = ""
RDEPENDS_packagegroup-freenivi-intel-drivers = " \
	xf86-input-evdev \
	xf86-video-intel \
	xf86-input-synaptics \
	xf86-video-ast \
	xf86-video-mga \
"
