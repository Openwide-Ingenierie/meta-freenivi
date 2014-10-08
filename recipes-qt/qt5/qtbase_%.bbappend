PACKAGECONFIG_GL = "${@base_contains('DISTRO_FEATURES', 'wayland', 'gles5', '', d)}"

PACKAGECONFIG_append = " icu examples"
