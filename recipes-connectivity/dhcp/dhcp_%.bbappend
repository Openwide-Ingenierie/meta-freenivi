# look for files in the layer first
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

inherit systemd

SYSTEMD_PACKAGES += "dhcp-client"
SYSTEMD_SERVICE_dhcp-client = "dhclient.service"
SYSTEMD_AUTO_ENABLE_dhcp-client = "enable" 

FILES_dhcp-client += "${systemd_unitdir}/system/dhclient.service"
RPROVIDES_dhcp-client += "dhcp-client-systemd"
RREPLACES_dhcp-client += "dhcp-client-systemd"
RCONFLICTS_dhcp-client += "dhcp-client-systemd"

SRC_URI += "file://dhclient.service"

do_install_append() {
    install -d ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/dhclient.service ${D}${systemd_unitdir}/system
}

