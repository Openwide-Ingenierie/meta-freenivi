do_install_append() {
    # Fix fail to start systemd-hostnamed
    sed -i -e 's/.*PrivateNetwork.*//' ${D}/lib/systemd/system/systemd-hostnamed.service    
}

