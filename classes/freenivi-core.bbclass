inherit core-image

# Wayland
IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'weston', '', d)}"

# Fonts
IMAGE_INSTALL += "ttf-bitstream-vera"

# Utils
IMAGE_INSTALL += "tzdata tzdata-europe"
IMAGE_INSTALL += "procps"
IMAGE_INSTALL += "openssl ca-certificates"
IMAGE_INSTALL += "connman connman-client"
