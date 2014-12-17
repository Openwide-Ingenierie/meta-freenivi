DEPENDS_remove = "libsdl"

# When using wayland, remove x11 related dependencies
RDEPENDS_${PN}_remove = "evas-engine-software-x11 evas-engine-gl-x11 evas-engine-software-generic evas-loader-png evas-engine-fb"

