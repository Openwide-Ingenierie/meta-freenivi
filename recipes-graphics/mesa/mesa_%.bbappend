PACKAGECONFIG ??= "egl gles dri \
		${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}\
		${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}\
		gallium gallium-egl gallium-gbm gallium-llvm \
        "
