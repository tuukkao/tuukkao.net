#!/usr/bin/env bash

set -e

REMOTE_PATH=/var/www

hugo --minify --gc
rclone sync public/ vps:$REMOTE_PATH
