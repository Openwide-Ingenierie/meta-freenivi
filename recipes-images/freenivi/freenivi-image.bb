DESCRIPTION = "Image with Freenivi."

IMAGE_FEATURES += "splash package-management ssh-server-dropbear"

LICENSE = "MIT"

inherit core-image

IMAGE_INSTALL += "tzdata tzdata-europe"
IMAGE_INSTALL += "avahi-utils"
IMAGE_INSTALL += "procps"
IMAGE_INSTALL += "linuxconsoletools"
IMAGE_INSTALL += "openssl ca-certificates"

#IMAGE_INSTALL += "edje-utils elementary-tests"
IMAGE_INSTALL += "cinematicexperience"
#IMAGE_INSTALL += "qtwebkit qtwebkit-examples"

#IMAGE_INSTALL += "bluez5 bluez5-obex"
IMAGE_INSTALL += "ofono"
IMAGE_INSTALL += "connman"
IMAGE_INSTALL += "weston weston-examples"

#Install tools
IMAGE_INSTALL += "connman-client"

#Add i915 mesa driver for x86 architecture
IMAGE_INSTALL_append_x86 = " mesa-driver-i915 "
IMAGE_INSTALL_append_x86-64 = " mesa-driver-i915 "

#QT Wayland
IMAGE_INSTALL += "qtwayland qtwayland-plugins "

#Fonts
IMAGE_INSTALL += "ttf-bitstream-vera qtbase-fonts-ttf-dejavu"
