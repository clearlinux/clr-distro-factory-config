#!/usr/bin/env bash
#
# This is a post install script that is run from the config after the image
# has been created by clr-installer for images with special requirements
# ex: <image_name>-post.sh

set -e

SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

# Delay booting to give user a change to change boot params
"${SCRIPT_DIR}"/task-wait-to-boot.sh "${1}"
