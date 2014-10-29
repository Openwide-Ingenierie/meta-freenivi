PACKAGECONFIG ??= "egl gles dri \
		${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}\
		${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}\
		"

PACKAGECONFIG_append_qemux86 = "gallium gallium-egl gallium-gbm gallium-llvm"
PACKAGECONFIG_append_qemuarm = "gallium gallium-egl gallium-gbm gallium-llvm"

