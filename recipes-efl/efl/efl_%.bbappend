FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:" 

SRC_URI += "file://fix-wayland-pointer-update-with-touchscreen.patch"

PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"

PACKAGECONFIG[wayland] = "--enable-wayland --enable-egl --with-opengl=es WAYLAND_EGL_CFLAGS='-DEGL_API_FB -DLINUX -DWL_EGL_PLATFORM', --disable-wayland, wayland virtual/egl libxkbcommon virtual/wayland-egl"
PACKAGECONFIG[x11] = "--with-x --with-x11=xcb, --with-x11=none, libxext virtual/libx11 libxdamage libxrender libxcursor libxcomposite libxinerama libxrandr libxtst libxscrnsaver"

DEPENDS_remove = "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', ' libxext virtual/libx11 libxdamage libxrender libxcursor libxcomposite libxinerama libxrandr libxtst libxscrnsaver libxext-native ', '', d)}"

PACKAGES_remove = "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'ecore-x', '', d)}"

RDEPENDS_remove =  "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'ecore-x', '', d)}"
