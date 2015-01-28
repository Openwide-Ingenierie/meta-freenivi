# create and/or set ${XDG_RUNTIME_DIR}
if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/run/user/$(id -u $USER)
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir -p "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

# set default platform for Qt application to wayland-egl
export QT_QPA_PLATFORM=wayland-egl

# set default engine for elf application to wayland-egl
export ELM_ENGINE=wayland-egl

# launch weston on login (tty1 only)
if test "$(tty)" = "/dev/tty1"; then
    /usr/bin/weston --log=/var/log/weston.log
fi
