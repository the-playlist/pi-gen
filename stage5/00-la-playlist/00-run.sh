#!/bin/bash -e

apt-get install files/La-playlist.deb

EXE="la-playlist"

if [[ -z "${ACTIVATION_KEY}" ]]; then
  echo "Activation key is not defined"
else
  LOCAL_USER="pi"
  CONF_FOLDER="${ROOTFS_DIR}/home/${LOCAL_USER}/.config/${PRODUCT_NAME}"
  KEY_PATH="${CONF_FOLDER}/activation"
  mkdir -p "${CONF_FOLDER}"
  chown "${LOCAL_USER}:${LOCAL_USER}" "${CONF_FOLDER}"
  touch "${KEY_PATH}"
  echo "${ACTIVATION_KEY}" > "${KEY_PATH}"
  chown "${LOCAL_USER}:${LOCAL_USER}" "${KEY_PATH}"
  echo "The Activation Key has been copied to ${KEY_PATH}"
fi