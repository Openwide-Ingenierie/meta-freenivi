SUMMARY = "feh is a fast, lightweight image viewer which uses imlib2."
HOMEPAGE = "http://feh.finalrewind.org/"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=b5632ca1a33c4bdbf9aa0630e0c95e5f"
DEPENDS = "virtual/imlib2 jpeg virtual/libx11 libxext libxt libxinerama"

SRC_URI = "http://feh.finalrewind.org/${PN}-${PV}.tar.bz2"
SRC_URI[md5sum] = "da59074c2e7b68fb08f555e366f827a9"
SRC_URI[sha256sum] = "60e07a0f545f6fb7af7b6c0d2ce1ba6bacfa65380e83cbbc2c54e8aa6b8b7032"

S = "${WORKDIR}/${PN}-${PV}"

inherit autotools-brokensep

do_install() {
    oe_runmake DESTDIR=${D} PREFIX=/usr install-bin
}

RDEPENDS_${PN} += "imlib2-filters imlib2-loaders"
