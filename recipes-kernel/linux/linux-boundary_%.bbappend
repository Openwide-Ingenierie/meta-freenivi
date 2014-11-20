FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://multitouch-hid.cfg"
SRC_URI += "file://ct36x.patch"
# SRC_URI += "file://cgroups.cfg"

do_patch_defconfig () {
    echo "CONFIG_CT36X_TS=y" >> ${WORKDIR}/defconfig
}
addtask patch_defconfig after do_unpack before do_compile
