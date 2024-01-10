#!/usr/bin/env bash

set -e

REMOTE_PATH=/home/users/tuukkao/sites/tuukkao.net/www

hugo --minify --gc
rclone sync public/ kapsi:$REMOTE_PATH
