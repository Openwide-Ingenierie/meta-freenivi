
#stable branch no longer exists
QT_MODULE_BRANCH = "5.4"

#workaround from tizen to make the touchscreen working in qtwebkitdemo
FILESEXTRAPATHS := "${THISDIR}/${PN}"

SRC_URI += " \
    file://qt_touch_workaround.patch \
"