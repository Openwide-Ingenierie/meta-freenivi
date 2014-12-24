PACKAGECONFIG_GL = "${@base_contains('DISTRO_FEATURES', 'wayland', 'gles', '', d)}"

DEPENDS += "cups virtual/mesa"

PACKAGECONFIG_append = " icu examples accessibility"
