inherit core-image

FREENIVI_IMAGE_NAME = "${MACHINE}-freenivi-full"

IMAGE_FEATURES += "splash \
                   tools-debug \
                   package-management \
                   ssh-server-dropbear \
                   "

# Qt
IMAGE_INSTALL += "qtbase \
                  qtbase-fonts \
                  qtbase-fonts-ttf-dejavu \
                  qtbase-plugins \
                  qtbase-tools \
                  qtquickcontrols-qmlplugins \
                  qtdeclarative-qmlplugins \
                  qtwebkit \
                  qtwebkit-examples-examples \
                  "
# Qt Wayland
IMAGE_INSTALL += "qtwayland \
                  qtwayland-plugins \
                  "

# Wayland
IMAGE_INSTALL += "weston \
                  weston-examples"

# EFL
IMAGE_INSTALL += "elementary \
                  elementary-tests \
                  edje-utils \
                  evas \
                  ecore-evas"
# EFL Bench
IMAGE_INSTALL += "expedite \
                  perf"

# Fonts
IMAGE_INSTALL += "ttf-bitstream-vera" 

# Carrousel demo app
IMAGE_INSTALL += "carrousel"

IMAGE_INSTALL += "dhcp-client"
IMAGE_INSTALL += "openssh-sftp openssh-sftp-server"
IMAGE_INSTALL += "autologin"
IMAGE_INSTALL += "tzdata tzdata-europe"
IMAGE_INSTALL += "avahi-utils"
IMAGE_INSTALL += "procps"
IMAGE_INSTALL += "linuxconsoletools"
IMAGE_INSTALL += "openssl ca-certificates"
IMAGE_INSTALL += "cinematicexperience"
IMAGE_INSTALL += "ofono"
IMAGE_INSTALL += "connman-client"
#IMAGE_INSTALL += "connman"
#IMAGE_INSTALL += "bluez5 bluez5-obex"

#IMAGE_INSTALL_append_x86 = " mesa-driver-i915 "
#IMAGE_INSTALL_append_x86-64 = " mesa-driver-i915 "
