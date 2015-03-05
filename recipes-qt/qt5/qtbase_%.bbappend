# use egl (gles2) instead of gl when having wayland
PACKAGECONFIG_GL = "${@base_ifelse(base_contains('DISTRO_FEATURES', 'wayland', True, False, d), 'gles2', base_contains('DISTRO_FEATURES', 'opengl', 'gl', '', d))}"

DEPENDS += "cups virtual/mesa"

PACKAGECONFIG += "icu examples accessibility"
