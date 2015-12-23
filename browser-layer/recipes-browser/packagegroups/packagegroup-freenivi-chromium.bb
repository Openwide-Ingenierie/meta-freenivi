DESCRIPTION = "Chromium."
LICENSE = " "

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	packagegroup-freenivi-chromium \
"

SUMMARY_packagegroup-freenivi-chromium = ""
RDEPENDS_packagegroup-freenivi-chromium = " \
	chromium \
	libexif \
"

