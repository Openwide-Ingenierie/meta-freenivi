PACKAGECONFIG_GL = "${@base_contains('DISTRO_FEATURES', 'wayland', 'gles', '', d)}"

DEPENDS += "cups mesa"

PACKAGECONFIG_append = " icu examples"
