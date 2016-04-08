FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

#replaces DEPENDS value in bb to make X11 part dependant on PACKAGECONFIG
# DEPENDS = "virtual/libiconv tslib curl glib-2.0 gnutls pkgconfig zlib jpeg openssl libsndfile1 dbus libexif librsvg freetype libpng tiff libxext virtual/libx11 libxdamage libxrender fontconfig libfribidi giflib udev libxcursor libxcomposite libxinerama libxrandr libxtst libxscrnsaver efl-native util-linux libunwind"
DEPENDS = "virtual/libiconv tslib curl glib-2.0 gnutls pkgconfig zlib jpeg openssl libsndfile1 dbus libexif librsvg freetype libpng tiff fontconfig libfribidi giflib udev efl-native util-linux libunwind"

SRC_URI += "file://fix-wayland-pointer-update-with-touchscreen.patch"

PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"

PACKAGECONFIG[wayland] = "--enable-wayland --enable-egl, --disable-wayland, wayland virtual/egl libxkbcommon virtual/wayland-egl"
PACKAGECONFIG[x11] = "--with-x --with-x=xcb, --with-x=none, libxext virtual/libx11 libxdamage libxrender libxcursor libxcomposite libxinerama libxrandr libxtst libxscrnsaver"
