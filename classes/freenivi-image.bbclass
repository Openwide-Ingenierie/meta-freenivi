inherit core-image

FREENIVI_IMAGE_NAME = "${MACHINE}-freenivi-full"

IMAGE_FEATURES += " \
    splash \
    tools-debug \ 
    debug-tweaks \
    package-management \
    ssh-server-dropbear \
    ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11-base', '', d)} \
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
    qtmultimedia-qmlplugins \
    qt3d-qmlplugins \
    qtwebkit \
"

# Qt Wayland
IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'qtwayland qtwayland-plugins', '', d)}"

# Wayland
IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'weston weston-examples', '', d)}"

# X11
IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', '${XSERVER} xinit', '', d)}"

# EFL
IMAGE_INSTALL += " \
    elementary \
    elementary-tests \
    edje-utils \
    evas \
    ecore-evas \
"

# EFL Bench
IMAGE_INSTALL += " \
    expedite \
    perf \
"

# Fonts
IMAGE_INSTALL += "ttf-bitstream-vera" 

# Demos
#IMAGE_INSTALL += "demos"
IMAGE_INSTALL += "compiz carrousel qmlshowcase cinematicexperience elemines twm openbox openbox-theme-clearlooks"

IMAGE_INSTALL += "openssh-sftp openssh-sftp-server"
IMAGE_INSTALL += "autologin"
IMAGE_INSTALL += "tzdata tzdata-europe"
IMAGE_INSTALL += "avahi-utils"
IMAGE_INSTALL += "procps"
IMAGE_INSTALL += "linuxconsoletools"
IMAGE_INSTALL += "openssl ca-certificates"
IMAGE_INSTALL += "ofono"
IMAGE_INSTALL += "connman connman-client"
#IMAGE_INSTALL += "bluez5 bluez5-obex"

IMAGE_INSTALL += "e-wm e-wm-config-standard e-wm-config-mobile"
IMAGE_INSTALL += "efl-dbg e-wm-dbg"
