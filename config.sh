#! /usr/bin/env bash
# Copyright (c) 2019 Intel Corporation
#
# SPDX-License-Identifier: Apache-2.0

# ==============================================================================
# Distribution Config
# ==============================================================================
DISTRO_NAME="" # Name for this Downstream of Clear Linux
DISTRO_URL="" # URL that will be used to host the distro artifacts (update, releases etc)

BUNDLES_REPO="" # Git repository Hosting the bundles definitions

# ==============================================================================
# Infrastructure config
# ==============================================================================
PUBLISHING_HOST="" # The hostname of the server to which release artifacts will be published
PUBLISHING_ROOT="/srv/pub" # The directory on the server where release artifacts will be published

# Only if using koji:
KOJI_TAG="" # Koji Tag to be used by this Downstream
KOJI_URL="" # Kojihub URL

# ==============================================================================
# Workspace config
# ==============================================================================
# Folders structure inside the Builder host. Those are assumed to exist and be
# accessible by the builder user.
MIXER_ROOT="/srv/mixer"
MIXER_DIR="${MIXER_ROOT}/${NAMESPACE}"

STAGING_ROOT="/srv/stage"
STAGING_DIR="${STAGING_ROOT}/${NAMESPACE}"

# ==============================================================================
# You can export custom environment variables (like proxy) bellow
# ==============================================================================
