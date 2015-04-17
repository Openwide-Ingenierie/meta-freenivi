DESCRIPTION = "Freenivi demo image."

inherit freenivi-image

IMAGE_INSTALL += "autologin"
IMAGE_INSTALL += " \
        ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'demos-wayland', '', d)} \
	${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'demos-x11', '', d)} \
"