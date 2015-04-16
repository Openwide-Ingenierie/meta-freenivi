DISTRO_NAME = "Freenivi"
DISTRO_VERSION = "1.0.0"
DISTRO_CODENAME =""
SDK_VENDOR = "-freenivisdk"
SDK_VERSION := "${@'${DISTRO_VERSION}'}"

MAINTAINER = "Freenivi Team <freenivi-dev@lists.projects.openwide.fr>"

TARGET_VENDOR = "-freenivi"

LOCALCONF_VERSION = "1"
LAYER_CONF_VERSION ?= "6"

VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = ""

DISTRO_FEATURES_append = " vfat usbhost bluetooth wifi 3g nfc ipv6 zeroconf phone systemd opengl pam wifi"
DISTRO_FEATURES_append = " ${DISTRO_FEATURES_LIBC}"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"

PREFERRED_PROVIDER_udev ?= "systemd"
PREFERRED_PROVIDER_udev-utils ?= "systemd"

PREFERRED_VERSION_linux-yocto ?= "3.10%"
PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.10%"
PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.10%"
PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.10%"
PREFERRED_VERSION_linux-yocto_vexpressa9 ?= "3.10%"

PREFERRED_PROVIDER_virtual/wayland-egl_mx6 = "gpu-viv-bin-mx6q"

PREFERRED_PROVIDER_jpeg = "jpeg"
PREFERRED_PROVIDER_jpeg-native = "jpeg-native"

TCLIBCAPPEND = ""

QEMU_TARGETS ?= "arm i386 x86_64"

XSERVER ?= "xserver-xorg \
           xserver-xf86-config \
           xserver-xorg-extension-dbe \
           xserver-xorg-extension-dri \
           xserver-xorg-extension-dri2 \
           xserver-xorg-extension-extmod \
           xserver-xorg-extension-glx \
           xf86-input-evdev \
           xf86-input-mouse \
           xf86-input-keyboard \
           mesa-driver-swrast \
           ${@base_contains("MACHINE_ARCH", "qemux86", "xf86-video-vmware", "", d)} \
           ${@base_contains("MACHINE_ARCH", "qemux86_64", "xf86-video-vmware", "", d)} \
           ${@base_contains("MACHINE_ARCH", "vexpressa9", "xf86-video-fbdev", "", d)} \
          "
PACKAGECONFIG_remove_mx6 = "gallium gallium-egl gallium-llvm"

PREMIRRORS ??= "\
bzr://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
git://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
hg://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n \
osc://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
p4://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n \
svk://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
svn://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n"

MIRRORS =+ "\
ftp://.*/.*      http://downloads.yoctoproject.org/mirror/sources/ \n \
http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n \
https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"

# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
# fetch from the network (and warn you if not). To disable the test set
# the variable to be empty.
# Git example url: git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD

CONNECTIVITY_CHECK_URIS ?= " \
             https://eula-downloads.yoctoproject.org/index.php"

# Default hash policy for distro
BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
#
# OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in
# an incompatible way. Such changes should usually be detailed in the commit
# that breaks the format and have been previously discussed on the mailing list
# with general agreement from the core team.
#
OELAYOUT_ABI = "8"

# QA check settings - a little stricter than the OE-Core defaults
WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi libdir"
ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
            useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
            compile-host-path dep-cmp installed-vs-shipped install-host-path \
            packages-list perm-config perm-line perm-link pkgv-undefined \
            pn-overrides split-strip var-undefined"