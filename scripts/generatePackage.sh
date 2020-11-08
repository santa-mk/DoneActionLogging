#!/bin/sh

# paramters
APP_NAME=DoneActionLogging
SCRIPT_DIR=$(cd $(dirname $0);pwd)
APP_DIR=$(dirname ${SCRIPT_DIR})
SRC_DIR=${APP_DIR}/src
DESTINATION_DIR=${APP_DIR}/package
PLATFORM=darwin
ARCH=x64

PACKAGING_CMD="npx electron-packager ${SRC_DIR} ${APP_NAME} --out=${DESTINATION_DIR} --platform=${PLATFORM} --arch=${ARCH} --overwrite"

# cmd
echo "SRC_DIR : "${SRC_DIR}
echo ${PACKAGING_CMD}
${PACKAGING_CMD}
