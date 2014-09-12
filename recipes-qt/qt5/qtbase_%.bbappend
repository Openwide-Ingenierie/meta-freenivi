PACKAGECONFIG_GL = "${@base_contains('DISTRO_FEATURES', 'wayland', 'gles2', '', d)}"
