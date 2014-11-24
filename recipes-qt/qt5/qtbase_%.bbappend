PACKAGECONFIG_GL = "${@base_contains('DISTRO_FEATURES', 'wayland', 'gles', '', d)}"

DEPENDS += "cups virtual/mesa"

PACKAGECONFIG_append = " icu examples accessibility"

INSANE_SKIP_${PN}-examples-dev = "libdir"
INSANE_SKIP_${PN}-examples-dbg = "libdir"
