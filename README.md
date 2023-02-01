# Rclone Index
Serve your Rclone remotes as a public/private index through HTTP/WebDAV, on free tier PaaS like Replit, Render, Railway etc.

## Features
- [x] Multiple Rclone remotes in a single index.
- [x] Can also be used to only serve a single remote.
- [x] Permalink for every file on all of your remotes.
- [x] Index and file links are secured with Basic Auth.
- [x] Built-in config file encryption support. Read [this](https://rclone.org/docs/#configuration-encryption).
- [x] Customizable index template.
- [x] Ease of use thanks to automated shell scripts.
- [x] Dark mode.

NOTES:
- Most of them are features of Rclone.
- File links will not change as long as you don't rename your remotes.

## Variables
- `AUTH_USER`: Username for basic authentication.
- `AUTH_PASS`: Password for basic authentication.
- `PORT`: Your server port.
- `SERVE_REMOTE`: The remote you want to serve in index. You can set it to serve a single remote or make a combine remote to serve multiple remotes in a single index. The later one takes some time to initiate if your combined remote has a lot of upstreams.

Every Rclone configuration from remotes to command arguments can be set using environment variables. Just read [this](https://rclone.org/docs/#environment-variables).