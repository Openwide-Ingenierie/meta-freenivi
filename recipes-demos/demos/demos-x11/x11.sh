export ELM_ENGINE="gl"

# launch x11 on login (tty1 only)
if test "$(tty)" = "/dev/tty1"; then
    # we need to sleep because the display is not available otherwise
    sleep 10
    /usr/bin/startx
fi
