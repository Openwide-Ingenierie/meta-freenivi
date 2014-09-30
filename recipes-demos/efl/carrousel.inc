SUMMARY = "Carrousel demo program using efl"
HOMEPAGE = "https://github.com/naguirre/carrousel"
LICENSE = "GPLv3"

LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"

inherit autotools

DEPENDS = "elementary evas lua"
RDEPENDS_${PN} = "elementary evas lua"
