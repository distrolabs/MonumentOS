#!/bin/bash

#!/usr/bin/env bash

#e
#echo "::group:: ===$(basename "$0")==="

set -ouex pipefail

source /usr/lib/os-release || false

IMAGE_PRETTY_NAME="MonumentOS"
IMAGE_LIKE="fedora"
HOME_URL="https://github.com/distrolabs/MonumentOS"
SUPPORT_URL="https://github.com/distrolabs/MonumentOS/issues/"
BUG_SUPPORT_URL="https://github.com/distrolabs/MonumentOS/issues/"
CODE_NAME="eOS8"
#VERSION="${VERSION:-00.00000000}"
IMAGE_NAME=monumentos
IMAGE_VENDOR=distrolabs


# OS Release File
sed -i "s|^NAME=.*|NAME=\"MonumentOS\"|" /usr/lib/os-release
sed -i "s|^PRETTY_NAME=.*|PRETTY_NAME=\"${IMAGE_PRETTY_NAME} ${VERSION} (${CODE_NAME})\"|" /usr/lib/os-release
sed -i "s|^HOME_URL=.*|HOME_URL=\"$HOME_URL\"|" /usr/lib/os-release
sed -i "s|^SUPPORT_URL=.*|SUPPORT_URL=\"$SUPPORT_URL\"|" /usr/lib/os-release
sed -i "s|^BUG_REPORT_URL=.*|BUG_REPORT_URL=\"$BUG_SUPPORT_URL\"|" /usr/lib/os-release
sed -i "s|^DEFAULT_HOSTNAME=.*|DEFAULT_HOSTNAME=\"monumentos\"|" /usr/lib/os-release
sed -i "s|^VERSION_CODENAME=.*|VERSION_CODENAME=\"$CODE_NAME\"|" /usr/lib/os-release


# Added in systemd 249.
# https://www.freedesktop.org/software/systemd/man/latest/os-release.html#IMAGE_ID=
#echo "IMAGE_ID=\"${IMAGE_NAME}\"" >> /usr/lib/os-release
#echo "IMAGE_VERSION=\"${VERSION}\"" >> /usr/lib/os-release

# Fix issues caused by ID no longer being fedora
#sed -i "s|^EFIDIR=.*|EFIDIR=\"fedora\"|" /usr/sbin/grub2-switch-to-blscfg

#echo "::endgroup::"
