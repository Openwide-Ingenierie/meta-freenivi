EXTRA_OECONF += "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', '--enable-xcb-shm=no', '', d)}"

