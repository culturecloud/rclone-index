#!/bin/bash

echo ""
./rclone -V
echo ""

./rclone rcd \
    --rc-serve \
    --rc-addr=:5572 \
    --rc-user=$AUTH_USER \
    --rc-pass=$AUTH_PASS \
    --rc-template="templates/index.html"
