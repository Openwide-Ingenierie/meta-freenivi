inherit freenivi-image

IMAGE_FEATURES += " \
        tools-debug \
        debug-tweaks \
 	ssh-server-dropbear \
"

IMAGE_INSTALL += "openssh-sftp openssh-sftp-server"

IMAGE_INSTALL += "autologin"
