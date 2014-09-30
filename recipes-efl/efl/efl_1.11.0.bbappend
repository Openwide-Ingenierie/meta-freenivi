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

DEPENDS_append = " libxkbcommon"

#FIXME build error when --enable-wayland is set
# set it only when opengl is in distro_features
CFLAGS_append = " -DEGL_API_FB "

#TODO systemd
PACKAGECONFIG_class-target_append = " \
    ${@base_contains('DISTRO_FEATURES', 'egl', 'egl', '', d)} \
    ${@base_contains('DISTRO_FEATURES', 'wayland', 'wayland egl', '', d)} \
    ${@base_contains('DISTRO_FEATURES', 'x11', 'x11', '', d)} \
    ${@base_contains('DISTRO_FEATURES', 'systemd', '', '', d)} \
    "
 
PACKAGECONFIG[wayland] = "--enable-wayland,--disable-wayland, wayland"
PACKAGECONGIG[systemd] = "--disable-systemd,--disable-systemd,,"
PACKAGECONFIG[egl] = "--enable-egl --with-opengl=es,--with-opengl=none, virtual/egl virtual/libgles2"
PACKAGECONFIG[x11] = "--with-x11=xlib,--with-x11=none,,"
