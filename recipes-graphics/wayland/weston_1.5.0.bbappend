FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI_append_mx6 = " \
    file://0001-Add-Vivante-EGL-support.patch \
    file://0002-Add-Vivante-GAL2D-support.patch \
    file://0003-Distorted-line-and-shadow-if-use-2d-com.patch \
    file://0004-Desktop-shell-Don-t-assume-there-is-a-pointer.patch \
    file://0005-Enable-GAL2D-compositor-in-SoloLite.patch \
    file://0006-Change-GAL2D-compositor-to-be-default-i.patch \
    "
SRC_URI_append = " \
    file://weston.service \
    file://weston.ini \
    file://.profile \
    file://qtwebbrowser.png \
    "

inherit systemd

SYSTEMD_SERVICE_${PN} = "weston.service"

PACKAGECONFIG_mx6 = "fbdev"
PACKAGECONFIG_append_mx6q = " egl cairo-glesv2"
PACKAGECONFIG_append_mx6dl = " egl cairo-glesv2"
PACKAGECONFIG_append_mx6sx = " egl cairo-glesv2"

EXTRA_OECONF_append_mx6 = " \
    --disable-libunwind \
    --disable-xwayland-test \
    WESTON_NATIVE_BACKEND=fbdev-backend.so \
"

EXTRA_OEMAKE_append_mx6 = " \
    COMPOSITOR_CFLAGS="-I ${STAGING_INCDIR}/pixman-1 -DLINUX=1 -DEGL_API_FB -DEGL_API_WL" \
    FB_COMPOSITOR_CFLAGS="-DLINUX=1 -DEGL_API_FB -DEGL_API_WL" \
    SIMPLE_EGL_CLIENT_CFLAGS="-DLINUX -DEGL_API_FB -DEGL_API_WL" \
    EGL_TESTS_CFLAGS="-DLINUX -DEGL_API_FB -DEGL_API_WL" \
    CLIENT_CFLAGS="-I ${STAGING_INCDIR}/cairo -I ${STAGING_INCDIR}/pixman-1 -DLINUX -DEGL_API_FB -DEGL_API_WL" \
"
EXTRA_OEMAKE_append_mx6sl = " \
    COMPOSITOR_LIBS="-lEGL -lGAL -lwayland-server -lxkbcommon -lpixman-1" \
    FB_COMPOSITOR_LIBS="-lEGL -lwayland-server -lxkbcommon" \
    "
EXTRA_OEMAKE_append_mx6q = " \
    COMPOSITOR_LIBS="-lGLESv2 -lEGL -lGAL -lwayland-server -lxkbcommon -lpixman-1" \
    FB_COMPOSITOR_LIBS="-lGLESv2 -lEGL -lwayland-server -lxkbcommon" \
    "
EXTRA_OEMAKE_append_mx6dl = " \
    COMPOSITOR_LIBS="-lGLESv2 -lEGL -lGAL -lwayland-server -lxkbcommon -lpixman-1" \
    FB_COMPOSITOR_LIBS="-lGLESv2 -lEGL -lwayland-server -lxkbcommon" \
    "
EXTRA_OEMAKE_append_mx6sx = " \
    COMPOSITOR_LIBS="-lGLESv2 -lEGL -lGAL -lwayland-server -lxkbcommon -lpixman-1" \
    FB_COMPOSITOR_LIBS="-lGLESv2 -lEGL -lwayland-server -lxkbcommon" \
    "

do_install_append () {

    # install weston systemd service file
    install -d ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/weston.service ${D}${systemd_unitdir}/system
    # install weston.ini and .profile for root and logo for qtwebbrowser
    install -d ${D}${ROOT_HOME}
    install -m 0644 ${WORKDIR}/weston.ini ${D}${ROOT_HOME}/weston.ini
    install -m 0644 ${WORKDIR}/.profile ${D}${ROOT_HOME}/.profile
    install -m 0644 ${WORKDIR}/qtwebbrowser.png ${D}${ROOT_HOME}/qtwebbrowser.png
}

FILES_${PN}_append = " \
    ${systemd_unitdir}/system/weston.service \
    ${ROOT_HOME}/* \
    ${ROOT_HOME}/.profile \
    "

PACKAGE_ARCH_mx6 = "${MACHINE_ARCH}"
