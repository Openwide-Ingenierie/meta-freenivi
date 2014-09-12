RDEPENDS_packagegroup-base-bluetooth = "\
    bluez4 \
    ${@base_contains('COMBINED_FEATURES', 'alsa', 'libasound-module-bluez', '',d)} \
    "
