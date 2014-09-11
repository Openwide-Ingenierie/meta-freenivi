require ${BPN}.inc

PV = "1.11"

# We use the branch devs/cedric/efl-1.11
SRCREV = "c6353fc5e12a25782b21b57c5fea47717e279261"

SRC_URI = "\
    git://git.enlightenment.org/tools/${BPN}.git;branch=devs/cedric/efl-1.11 \
    "

S = "${WORKDIR}/git"
