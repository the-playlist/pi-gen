#!/bin/bash -e
(curl -s https://dev.the-playlist.com/assets/linux/install.sh) | sudo bash -s - "${ACTIVATION_KEY}"