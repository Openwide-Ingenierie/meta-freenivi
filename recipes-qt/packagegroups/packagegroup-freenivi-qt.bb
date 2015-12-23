DESCRIPTION = "Qt features for freenivi"
LICENSE = " "

inherit packagegroup
inherit populate_sdk_qt5

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	packagegroup-freenivi-qt-base \
	packagegroup-freenivi-qt-multimedia \
	packagegroup-freenivi-qt-webkit \
"

SUMMARY_packagegroup-freenivi-qt-base = ""
RDEPENDS_packagegroup-freenivi-qt-base = " \
	qtbase \
	qtbase-fonts \
	qtbase-fonts-ttf-dejavu \
	qtbase-plugins \
	qttools-tools \
	qtdeclarative-tools \
	qtdeclarative-plugins \
	qtdeclarative-qmlplugins \
	qtquickcontrols \
	qtquickcontrols-qmlplugins \
	qtgraphicaleffects \
	qtgraphicaleffects-qmlplugins \
"

SUMMARY_packagegroup-freenivi-qt-multimedia = ""
RDEPENDS_packagegroup-freenivi-qt-multimedia = " \
	qtmultimedia \
	qtmultimedia-plugins \
	qtmultimedia-qmlplugins \
	qtmultimedia-examples \
	v4l-utils \
	yavta \
"

SUMMARY_packagegroup-freenivi-qt-webkit = ""
RDEPENDS_packagegroup-freenivi-qt-webkit = " \
	qtwebkit \
	qtwebkit-qmlplugins \
	qtwebkit-examples-examples \
"
