SUMMARY = "An EFL minesweeper clone"
LICENSE = "BSD"

SRC_URI = "git://git.enlightenment.org/games/elemines.git"

PV = "0.2.3+git${SRCREV}"

SRCREV = "7e6bd0416f8fb2c0464768c57a90f2ac752cead8"

S = "${WORKDIR}/git"

LIC_FILES_CHKSUM = "file://COPYING;md5=da180c26e8e6ceaaa969cde38e2e9c63"

DEPENDS = "elementary evas edje ecore etrophy"

inherit autotools
inherit gettext

EXTRA_OECONF += " \
    --with-edje-cc=${STAGING_BINDIR_NATIVE}/edje_cc \
"

do_configure_prepend() {
    touch ${S}/ABOUT-NLS
}

FILES_${PN} += "${datadir}"

RDEPENDS_${PN} = "elementary evas ecore edje etrophy"
