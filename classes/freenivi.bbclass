DESCRIPTION = "FreeNivi"
LICENSE = "MIT"

inherit core-image

IMAGE_FEATURES += "splash package-management ssh-server-dropbear"

IMAGE_INSTALL += "autologin config"

IMAGE_INSTALL += "tzdata tzdata-europe"
IMAGE_INSTALL += "avahi-utils"
IMAGE_INSTALL += "procps"
IMAGE_INSTALL += "linuxconsoletools"
IMAGE_INSTALL += "openssl ca-certificates"

#IMAGE_INSTALL += "edje-utils elementary-tests"
IMAGE_INSTALL += "cinematicexperience"
IMAGE_INSTALL += "qtwebkit"

#IMAGE_INSTALL += "bluez5 bluez5-obex"
IMAGE_INSTALL += "ofono"
#IMAGE_INSTALL += "connman"
IMAGE_INSTALL += "weston weston-examples"

#Install tools
IMAGE_INSTALL += "connman-client"

#QT Wayland
IMAGE_INSTALL += "qtwayland qtwayland-plugins "

#Fonts
IMAGE_INSTALL += "ttf-bitstream-vera qtbase-fonts-ttf-dejavu"

#Efl
IMAGE_INSTALL += "elementary elementary-tests edje-utils evas"

#Bench efl
PREFERRED_VERSION_expedite = "1.11"
IMAGE_INSTALL += "expedite perf"

#Carrousel demo app
IMAGE_INSTALL += "carrousel"

