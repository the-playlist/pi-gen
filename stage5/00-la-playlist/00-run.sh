#!/bin/bash -e

on_chroot << EOF
  # ACTIVATION_KEY should be defined in the config.
  (curl -s https://dev.the-playlist.com/assets/linux/install.sh) | bash -s - "${ACTIVATION_KEY}"
EOF