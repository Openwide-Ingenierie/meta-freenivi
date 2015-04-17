DESCRIPTION = "Freenivi development demo image."

inherit freenivi-dev-image

IMAGE_INSTALL += " \
        ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'demos-wayland', '', d)} \
	${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'demos-x11', '', d)} \
"