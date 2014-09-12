require ${BPN}.inc

# Take the last commit from master
SRCREV = "a802fb94a840704bcfa5522200498762bbcc1caa"
PR = "r0"
PV = "1.0+git${SRCREV}"

SRC_URI = "git://github.com/naguirre/carrousel.git"

S = "${WORKDIR}/git"

