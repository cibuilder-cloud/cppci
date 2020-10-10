#!/bin/bash

echo "(II) Setting up development environment"
export PATH="${PATH}":"${HOME}"/vcpkg
export LS_ROOT="${HOME}"/work

export LS_OS=linux
export LS_ARCH=x86_64
export LS_OS_ARCH="${LS_OS}"_"${LS_ARCH}"
export LS_THIRDPARTY_ROOT=/vcpkg
export LS_THIRDPARTY_TOOLS="${LS_THIRDPARTY_ROOT}"/installed/x64-linux/tools
echo "(II) .. LS_OS_ARCH ${LS_OS_ARCH}"
echo "(II) .. LS_THIRDPARTY_ROOT ${LS_THIRDPARTY_ROOT}"
echo "(II) .. LS_THIRDPARTY_TOOLS ${LS_THIRDPARTY_TOOLS}"
echo "(II) Development environment configured"
