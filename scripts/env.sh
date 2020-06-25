#!/bin/bash -eE

if [ "$DEBUG" = "yes" ]
then
    set -x
fi

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)
# Verified on Ubuntu 18.04
export INSTALL_DEPENDENCIES="yes"
#NET_TON_DEV_SRC_TOP_DIR=$(git rev-parse --show-toplevel)
NET_TON_DEV_SRC_TOP_DIR=$(cd "${SCRIPT_DIR}/../" && pwd -P)
export NET_TON_DEV_SRC_TOP_DIR
export TON_GITHUB_REPO="https://github.com/ton-blockchain/ton.git"
#export TON_STABLE_GITHUB_COMMIT_ID="master"
export TON_STABLE_GITHUB_COMMIT_ID="dbde9c1c40c1fae11fd20d6e4dbd4223eec47a8d"
export TON_SRC_DIR="${NET_TON_DEV_SRC_TOP_DIR}/ton"
export TON_BUILD_DIR="${TON_SRC_DIR}/build"
export TONOS_CLI_SRC_DIR="${NET_TON_DEV_SRC_TOP_DIR}/tonos-cli"
export TON_WORK_DIR="/var/ton-work"
export UTILS_DIR="${TON_BUILD_DIR}/utils"
export KEYS_DIR="$HOME/ton-keys"
export CONFIGS_DIR="${NET_TON_DEV_SRC_TOP_DIR}/configs"
export ADNL_PORT="30310"
HOSTNAME=$(hostname -s)
export HOSTNAME
export VALIDATOR_NAME="$HOSTNAME"
export PATH="${UTILS_DIR}:$PATH"
export LITESERVER_IP="127.0.0.1"
export LITESERVER_PORT="3031"
