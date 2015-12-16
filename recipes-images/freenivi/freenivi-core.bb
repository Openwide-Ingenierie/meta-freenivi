DESCRIPTION = "Freenivi image."

inherit freenivi-core

# Packages for testing:
IMAGE_FEATURES += " \
	debug-tweaks \
	ssh-server-dropbear \
"
IMAGE_INSTALL += "openssh-sftp openssh-sftp-server"
