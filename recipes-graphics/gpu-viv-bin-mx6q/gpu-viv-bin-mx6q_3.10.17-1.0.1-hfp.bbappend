
do_install_append () {
    sed -i 's/1\.0\.0/9\.2\.0/' ${D}${libdir}/pkgconfig/wayland-egl.pc
}
