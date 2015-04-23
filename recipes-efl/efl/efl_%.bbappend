FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://fix-wayland-pointer-update-with-touchscreen.patch"

PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"

PACKAGECONFIG[wayland] = "--enable-wayland --enable-egl, --disable-wayland, wayland virtual/egl libxkbcommon virtual/wayland-egl"
PACKAGECONFIG[x11] = "--with-x --with-x=xcb, --with-x=none, libxext virtual/libx11 libxdamage libxrender libxcursor libxcomposite libxinerama libxrandr libxtst libxscrnsaver"
