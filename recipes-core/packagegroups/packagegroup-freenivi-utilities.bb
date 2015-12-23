DESCRIPTION = "Utilities."
LICENSE = " "

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	packagegroup-freenivi-utilities \ 
"

SUMMARY_packagegroup-freenivi-utilities = ""
RDEPENDS_packagegroup-freenivi-utilities = " \
	fuse \
	fuse-utils \
	pstree \
	cpulimit \
	minicom \
	vim \
	startup-notification \
	ldd \
	grub \
	bzip2 \
	curl \
	pm-utils \
	pciutils \
	mkfontdir \
	kbd-keymaps \
	libxslt \
	dialog \
	icu \
	intltool \
	gnokii \
	pth \
	mpfr \
	json-glib \
	x264 \
"
