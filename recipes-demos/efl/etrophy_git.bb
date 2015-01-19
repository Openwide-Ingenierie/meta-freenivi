SUMMARY = "Etrophy is a library that manages scores, trophies and unlockables"
LICENSE = "BSD"

SRC_URI = "git://git.enlightenment.org/games/etrophy.git"

PV = "1.0+git${SRCREV}"

SRCREV = "6bae98b52a6b3647f7ede6d2ce63d81b259a384f"

S = "${WORKDIR}/git"

LIC_FILES_CHKSUM = "file://COPYING;md5=7b81c88bd23d5547d28953e1d4a5b82f"

inherit autotools
inherit gettext

EXTRA_OECONF += " \
    --with-edje-cc=${STAGING_BINDIR_NATIVE}/edje_cc \
"

do_configure_prepend() {
    touch ${S}/ABOUT-NLS
}

DEPENDS = "elementary evas ecore eet eina"
RDEPENDS_${PN} = "elementary evas eet eina ecore"
