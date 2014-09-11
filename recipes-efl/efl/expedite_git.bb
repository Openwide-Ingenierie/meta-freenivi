require recipes-efl/efl/${BPN}.inc

PV = "1.9"

SRCREV = "8a307d666601a9f8accfb8a447614bdc3e9474bd"

SRC_URI = "\
    git://git.enlightenment.org/tools/${BPN}.git;branch=devs/cedric/efl-1.9 \
    "

S = "${WORKDIR}/git"

EXTRA_OECONF = "\
	     --enable-opengl-sdl \
	     --enable-fb  \
	     --disable-software-ddraw \
	     --with-x=no \
	     --disable-software-sdl \
	     --disable-direct3d \
	     --disable-software-16-ddraw \
	     --disable-opengl-glew \	     
	     "

RDEPENDS_${PN} = ""

