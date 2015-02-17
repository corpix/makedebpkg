#!/usr/bin/env bash

#########################################
# Imports GPG keys for testing purposes #
#########################################

source scripts/vars

gpg --import assets/public.gpg
gpg --allow-secret-key-import --import assets/private.gpg

cat >.gpg-edit-key.input<<EOF
EOF
passwd
q1w2e3q1w2e3

Y
save
Y
EOF

gpg --no-tty --status-fd 1 --command-fd 0 --edit-key $GPG_KEY < .gpg-edit-key.input
