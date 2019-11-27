#!/usr/bin/env bash
#
# This is a task script that can be executed to perform specific tasks
# which are common between various images.
# Task scripts can be called commonly from post & finalize scripts.
# ex: task-<job_name>.sh

set -e

if (( ${#} < 1 )); then
    echo "${0}: Insufficient number of arguments." >&2
    exit 1
fi

if ! xz -q -T0 --stdout "${1}" > "${2:-${1}.xz}"; then
    echo "${0}: Unable to compress file ${1}." >&2
    exit 1
fi
