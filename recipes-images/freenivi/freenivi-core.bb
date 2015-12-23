DESCRIPTION = "Freenivi image."

inherit freenivi-core

# Packages for testing:
IMAGE_FEATURES += " \
	debug-tweaks \
	ssh-server-dropbear \
"
IMAGE_INSTALL += "packagegroup-freenivi-openssh"
IMAGE_INSTALL += "packagegroup-freenivi-debugtools packagegroup-freenivi-qt-base"
