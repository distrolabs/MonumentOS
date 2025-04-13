#!/usr/bin/env bash

set -oue pipefail

dnf5 install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release -y
dnf4 install -y lightdm
dnf4 install -y elementary-greeter
dnf4 group install -y 'pantheon desktop'
cat > /etc/lightdm/lightdm.conf << EOF
[Seat:*]
greeter-session=lightdm-slick-greeter
EOF

