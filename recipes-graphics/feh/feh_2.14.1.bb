SUMMARY = "feh is a fast, lightweight image viewer which uses imlib2."
HOMEPAGE = "http://feh.finalrewind.org/"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=b5632ca1a33c4bdbf9aa0630e0c95e5f"
DEPENDS = "virtual/imlib2 jpeg virtual/libx11 libxext libxt libxinerama"

SRC_URI = "http://feh.finalrewind.org/${PN}-${PV}.tar.bz2"
SRC_URI[md5sum] = "ce8509d7f5c8cfcd4afad056ded5e4d7"
SRC_URI[sha256sum] = "c0a19ed20ab96bd7030f6bca89a0b277261dd0df0501db76a8eb6955417e9fc2"

S = "${WORKDIR}/${PN}-${PV}"

inherit autotools-brokensep

do_install() {
    oe_runmake DESTDIR=${D} PREFIX=/usr install-bin
}

RDEPENDS_${PN} += "imlib2-filters imlib2-loaders"
