#delete X11 dependences
DEPENDS_remove = "libxext \
	       	  libxext-native \
		  virtual/libx11 \
		  libxrender \
		  libxcursor \
		  libxcomposite \
		  libxinerama \
		  libxrandr \
		  libxtst \
		  libxscrnsaver \
		  "
RDEPENDS_ecore_remove = "ecore-x"

#FIXME build error when --enable-wayland is set
EXTRA_OEMAKE_append = " CFLAGS="${CFLAGS} -DEGL_API_FB""

#TODO systemd
PACKAGECONFIG = "${@bb.utils.contains('DISTRO_FEATURES', 'egl', 'egl', '', d)} \
	         ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland egl', '', d)} \
	      	 ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11', '', d)} \
		 ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', '', '', d)} \
		" 
PACKAGECONFIG[wayland] = "--enable-wayland,--disable-wayland,,"
PACKAGECONGIG[systemd] = "--disable-systemd,--disable-systemd,,"
PACKAGECONFIG[egl] = "--enable-egl --with-opengl=es,--with-opengl=none,,"
PACKAGECONFIG[x11] = "--with-x11=xlib,--with-x11=none,,"
