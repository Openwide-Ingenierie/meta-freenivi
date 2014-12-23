FILESEXTRAPATHS_append := ":${THISDIR}/files"

# other version available for small screens
SRC_URI = " \
    http://quitcoding.com/download/Qt5_CinematicExperience_rpi_${PV}.tgz \
    file://ontext.patch \
"

SRC_URI[md5sum] = "935a5db0a6b2a72c67236e72f52be7d1"
SRC_URI[sha256sum] = "0dd602983ced5f7c0cfd5ad0fbfe2b0b7e3c9ff715e4ef23eef818ccc2b6c60b"

S = "${WORKDIR}/Qt5_CinematicExperience_rpi_${PV}/"
