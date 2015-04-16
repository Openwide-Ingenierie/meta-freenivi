PACKAGECONFIG_GL = "${@base_ifelse(base_contains('DISTRO_FEATURES', 'wayland', True, False, d), 'gles2', base_contains('DISTRO_FEATURES', 'opengl', 'gl', '', d))}"

DEPENDS += "cups"

PACKAGECONFIG += "icu examples accessibility"
