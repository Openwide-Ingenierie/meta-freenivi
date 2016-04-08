inherit core-image
include recipes-images/freenivi/freenivi-sdk.inc

IMAGE_FEATURES += " \
    package-management \
"

# Qt
IMAGE_INSTALL += " \
    qtbase \
    qtbase-fonts \
    qtbase-fonts-ttf-dejavu \
    qtbase-plugins \
    qtbase-tools \
    qtquickcontrols-qmlplugins \
    qtdeclarative-qmlplugins \
    qtdeclarative-plugins \
    qtmultimedia-qmlplugins \
"
#qt3d-qmlplugins \
#

# EFL
IMAGE_INSTALL += " \
    packagegroup-freenivi-efl \
"

# Qt Wayland
IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'qtwayland qtwayland-plugins', '', d)}"
# Wayland
IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'weston', '', d)}"

# X11
IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', '${XSERVER} xinit', '', d)}"
# default window manager for X11
IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'openbox openbox-theme-clearlooks', '', d)}"

# Fonts
IMAGE_INSTALL += "ttf-bitstream-vera"

# Splash Freenivi
IMAGE_INSTALL += "psplash"

#Can
IMAGE_INSTALL += "can-utils"

# Utils
IMAGE_INSTALL += "tzdata tzdata-europe"
IMAGE_INSTALL += "avahi-utils"
IMAGE_INSTALL += "procps"
IMAGE_INSTALL += "openssl ca-certificates"
IMAGE_INSTALL += "ofono"
IMAGE_INSTALL += "connman connman-client"
