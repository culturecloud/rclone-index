#!/bin/bash

if [ ! -f ./rclone ]; then
    curl -O https://beta.rclone.org/rclone-beta-latest-linux-amd64.zip \
		&& unzip rclone-beta-latest-linux-amd64.zip \
		&& cd rclone-*-linux-amd64 \
		&& cp ./rclone /home/runner/$REPL_SLUG \
		&& cd .. \
		&& chmod +x ./rclone \
		&& rm -rf rclone-*-linux-amd64 rclone-beta-latest-linux-amd64.zip
fi

echo ""
./rclone -V
echo ""

./rclone rcd --rc-serve --rc-addr :5572 --rc-user $RC_USER --rc-pass $RC_PASS