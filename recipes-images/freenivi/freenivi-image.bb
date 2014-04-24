# Base this image on generic IVI image

include recipes-images/freenivi/ivi-image.inc

PV = "1.0.0"

IMAGE_INSTALL_append = " \
    packagegroup-abstract-component-p1 \
    packagegroup-placeholder-component-p1 \
    packagegroup-specific-component-p2 \
    packagegroup-abstract-component-p2 \
"
