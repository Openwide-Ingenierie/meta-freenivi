DESCRIPTION = "Freenivi Image."
LICENSE = "MIT"

inherit freenivi-image

IMAGE_INSTALL_append = " \
    packagegroup-abstract-component-p1 \
    packagegroup-placeholder-component-p1 \
    packagegroup-specific-component-p2 \
    packagegroup-abstract-component-p2 \
    packagegroup-specific-component-p1 \
"
