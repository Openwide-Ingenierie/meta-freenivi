FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI += " \
    file://qt_touch_workaround.patch \
    file://disable_xcomposite_egl_qt_wayland_client_buffer_integration.patch \
"
