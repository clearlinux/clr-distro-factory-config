#! /usr/bin/env bash
# Copyright (c) 2018 Intel Corporation
#
# SPDX-License-Identifier: Apache-2.0

DSTREAM_NAME="" # Name for this Downstream of Clear Linux

# Infrastructure config
DSTREAM_DL_URL="" # URL that will be used to host this Downstream artifacts (update, releases etc)

KOJI_TAG="" # Koji Tag to be used by this Downstream
KOJI_URL="" # Kojihub URL
KOJI_TOPURL="" # Koji Top url (kojifiles)
BUNDLES_REPO="" # Git repository Hosting the bundles definitions for this Downstream

PUBLISHING_HOST="" # The hostname of the server to which Downstream artifacts will be published
PUBLISHING_ROOT="/srv/pub" # The directory on the server where Downstream artifacts will be published

# Workspace config
BUILD_DIR="/srv/work/${NAMESPACE:-${DSTREAM_NAME}}" # Folder inside the Builder that should be used to run the release process
STAGING_DIR="/srv/pub/${NAMESPACE:-${DSTREAM_NAME}}" # Folder inside the Builder that should be used to stage the produced artifacts

# You can export custom environment variables (like proxy) bellow
