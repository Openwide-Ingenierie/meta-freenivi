PACKAGECONFIG_GL = "${@base_contains('DISTRO_FEATURES', 'wayland', 'gles2', '', d)}"

DEPENDS += "cups virtual/mesa"

PACKAGECONFIG += "icu examples accessibility"
