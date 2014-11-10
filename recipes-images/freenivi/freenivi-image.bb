DESCRIPTION = "Freenivi Image."
LICENSE = "MIT"

#TODO: see if we can inherit core-image-weston
inherit freenivi

# Build u-boot for sabrelite target. 
# Associated recipe is in oe-core/meta/recipe-bsp/u-boot/
IMAGE_INSTALL_append_imx6qsabrelite = " u-boot"

IMAGE_INSTALL += "openssh-sftp-server ntp ntpdate sntp"
IMAGE_INSTALL += "qtbase qtbase-fonts qtbase-plugins qtbase-tools qtquickcontrols-qmlplugins qtdeclarative-qmlplugins"

#Add i915 mesa driver for x86 architecture
IMAGE_INSTALL_append_x86 = " mesa-driver-i915 "
IMAGE_INSTALL_append_x86-64 = " mesa-driver-i915 "

#REMOVE THIS
BBMASK = "meta-fsl-arm/recipes-graphics/wayland/"
