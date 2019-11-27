#!/usr/bin/env bash
#
# This is a task script that can be executed to perform specific tasks
# which are common between various images.
# Task scripts can be called commonly from post & finalize scripts.
# ex: task-<job_name>.sh

#!/bin/bash

# Have the installer image wait 5 seconds before launch
# Useful for users to change the boot command for debug

echo "timeout 5" >> "${1}/boot/loader/loader.conf"

exit 0
