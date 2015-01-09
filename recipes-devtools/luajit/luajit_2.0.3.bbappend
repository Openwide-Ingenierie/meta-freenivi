# fix linking with efl by adding -fPIC to TARGET_CFLAGS
EXTRA_OEMAKE = 'CROSS=${HOST_PREFIX} \
                TARGET_CFLAGS="${TOOLCHAIN_OPTIONS} ${HOST_CC_ARCH} -fPIC" \
                TARGET_LDFLAGS="${TOOLCHAIN_OPTIONS}" \
                TARGET_SHLDFLAGS="${TOOLCHAIN_OPTIONS}"'

