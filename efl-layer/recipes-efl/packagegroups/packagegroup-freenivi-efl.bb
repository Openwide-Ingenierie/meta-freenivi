DESCRIPTION = "EFL for freenivi"
LICENSE = " "

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	packagegroup-freenivi-efl \
"

SUMMARY_packagegroup-freenivi-efl = ""
RDEPENDS_packagegroup-freenivi-efl = " \
	elementary \
	elementary-tests \
	edje-utils \
	evas \
	ecore-evas \
"
