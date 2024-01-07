#!/usr/bin/env bash

set -e

REMOTE_PATH=/home/users/tuukkao/sites/tuukkao.kapsi.fi/www

hugo --minify --gc
rclone sync public/ kapsi:$REMOTE_PATH
