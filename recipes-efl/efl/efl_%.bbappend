FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_mx6 = " file://0002-Add-preprocessor-definitions-for-Vivante-generic.patch"

PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
PACKAGECONFIG[wayland] = "--enable-wayland --enable-egl --with-opengl=es, --disable-wayland, wayland virtual/egl virtual/libgles2"
