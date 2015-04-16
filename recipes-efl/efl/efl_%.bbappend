FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_mx6 = " file://0002-Add-preprocessor-definitions-for-Vivante-generic.patch"

SRC_URI += "file://fix-wayland-pointer-update-with-touchscreen.patch"

PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"

PACKAGECONFIG[wayland] = "--enable-wayland --enable-egl --with-opengl=es, --disable-wayland, wayland virtual/egl virtual/libgles2 libxkbcommon virtual/wayland-egl"
PACKAGECONFIG[x11] = "--with-x --with-x=xcb --with-opengl=es --enable-egl, --with-x=none, libxext virtual/libx11 libxdamage libxrender  libxcursor libxcomposite libxinerama libxrandr libxtst libxscrnsaver virtual/egl virtual/libgles2"
