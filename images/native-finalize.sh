#!/usr/bin/env bash
#
# This is a finalize script that is run by clr-distro-factory to support
# user's requirement for conversion / compression of images before exporting.
# ex: <image_name>-finalize.sh

set -e

SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

if (( ${#} != 1 )); then
    echo "${0}: Must receive exactly one file path." >&2
    exit 1
fi

if [[ ! -s "${1}" ]]; then
    echo "${0}: Invalid input: '${1}' is empty." >&2
    exit 1
fi

file_ext="${1##*.}"

if [[ "${file_ext}" == "iso" ]]; then
    echo "${1}"
else
    "${SCRIPT_DIR}/task-compress-image.sh" "${1}" "${1}.xz" >&2
    rm -rf "${1}" >&2
    echo "${1}.xz"
fi
