PACKAGECONFIG_GL = "${@base_contains('DISTRO_FEATURES', 'wayland', 'gles2', '', d)}"

PACKAGECONFIG_append_x86 = " icu examples"
