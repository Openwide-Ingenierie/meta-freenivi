DESCRIPTION = " Debugging packages for freenivi image"
LICENSE = "FREE"

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = "\
	packagegroup-freenivi-openssh \
	packagegroup-freenivi-debugtools \
"

RDEPENDS_packagegroup-freenivi-openssh = "\
	openssh-sftp \
	openssh-sftp-server \
"

RDEPENDS_packagegroup-freenivi-debugtools = "\
	gdbserver \
	oprofile \
	oprofileui-server \
	lttng-tools \
	lttng-modules \
	lttng-ust \
	babeltrace \
	powertop \
	latencytop \
	systemtap \
	bootchart2 \
	systemd-analyze \
"
 
