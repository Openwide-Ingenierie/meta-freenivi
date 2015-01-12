# fix linking with efl by adding -fPIC to TARGET_CFLAGS
EXTRA_OEMAKE = 'CROSS=${HOST_PREFIX} \
                TARGET_CFLAGS="${TOOLCHAIN_OPTIONS} ${HOST_CC_ARCH} -fPIC" \
                TARGET_LDFLAGS="${TOOLCHAIN_OPTIONS}" \
                TARGET_SHLDFLAGS="${TOOLCHAIN_OPTIONS}"'

# fix missing symlink lib (probably due to the -fPIC fix)
install_append_class-target () {
    ln -sf libluajit-5.1.so.${PV} ${D}${libdir}/libluajit-5.1.so.2 
}

