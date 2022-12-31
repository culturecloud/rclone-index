#!/bin/bash

./rclone rcd --transfers 1 \
    --rc-web-gui \
    --rc-web-fetch-url https://api.github.com/repos/retifrav/rclone-rc-web-gui/releases/latest \
    --rc-web-gui-force-update \
    --rc-web-gui-no-open-browser \
    --rc-user=$AUTH_USER \
    --rc-pass=$AUTH_PASS \
    --rc-addr=:0