FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://fix_wayland-egl_pc.patch \
	file://allow_eglvivante_build_without_X11.patch \
	"

