# Remove libsdl not needed here
DEPENDS_remove = "libsdl"

# Enable fb by default, and remove all sdl and widnows related option
EXTRA_OECONF = "\
	     --enable-fb  \
	     --disable-opengl-sdl \
	     --disable-software-sdl \
	     --disable-opengl-sdl \
	     --disable-software-sdl \
	     --disable-direct3d \
	     --disable-software-16-ddraw \
	     --disable-software-ddraw \
	     --disable-opengl-glew \
	     "

# Depends if x11 is in DISTRO_FEATURES or wayland
# TODO: handle the case x11 && opengl
EXTRA_OECONF_append = "\
	     ${@base_contains('DISTRO_FEATURES', 'wayland', '--with-x=no', '', d)}, \
	     ${@base_contains('DISTRO_FEATURES', 'x11',     '--with-x=yes \
	     					 	     --x-includes=${STAGING_INCDIR}/X11 \
							     --x-libraries=${STAGING_LIBDIR} \
							     --enable-simple-x11 \
							     --enable-software-x11 \
							     --enable-xrender-x11 \
							     --enable-software-16-x11 \
							     --enable-opengl-x11 ', '', d)}, \
	"

# When using wayland, remove x11 related dependencies
RDEPENDS_${PN}_remove = "evas-engine-software-x11 evas-engine-gl-x11"
