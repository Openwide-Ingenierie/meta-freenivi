DESCRIPTION = "Gstreamer packagegroup for freenivi."
LICENSE = " "

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	packagegroup-freenivi-gstreamer \
"

RDEPENDS_packagegroup-freenivi-gstreamer = " \
	${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'gst-player', '', d)} \
	${@bb.utils.contains('DISTRO_FEATURES', 'directfb', 'gst-player', '', d)} \
	gstreamer1.0 \
	gstreamer1.0-omx \
	gstreamer1.0-plugins-base \
	gstreamer1.0-plugins-good \
	gstreamer1.0-plugins-bad \
	gstreamer1.0-plugins-ugly \
"
