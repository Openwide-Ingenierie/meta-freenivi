FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-Add-systemd-tag-for-fb-device.patch \
"

do_install_append() {
    # Fix fail to start systemd-hostnamed
    sed -i -e 's/.*PrivateNetwork.*//' ${D}/lib/systemd/system/systemd-hostnamed.service    
}

