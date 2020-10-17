#!/bin/bash

# declare constants for all executables used
declare -r APT="/usr/bin/apt"
declare -r CP="/bin/cp"
declare -r GIT="/usr/bin/git"
declare -r MAKE="/usr/bin/make"
declare -r SUDO="/usr/bin/sudo"

# declare constants for our git repositories
declare -r KERNEL_REPO="https://github.com/raspberrypi/linux"
declare -r PROJECT_REPO="git@github.com:jaykch/linux-kernel-building"      # ssh
#declare -r PROJECT_REPO="https://github.com/jaykch/linux-kernel-building" # https

# where will we check out our git repos?
declare -r KERNEL_DIR="./kernel"
declare -r PROJECT_DIR="./project"

# raspberry pi 4 uses kernel7l as the name
declare -r KERNEL="kernel7l"

# packages required for the build
declare -ar REQUIRED_PACKAGES=(
    "bc"
    "raspberrypi-kernel-headers"
    "build-essential"
    "git"
    "wget"
    "bison"
    "flex"
    "libssl-dev"
    "make"
    )

# install required packages
$SUDO $APT install "${REQUIRED_PACKAGES[@]}"

# download source from github
$GIT clone --depth=1 "$KERNEL_REPO" "$KERNEL_DIR"

# download config file from github
$GIT clone --depth=1 "$PROJECT_REPO" "$PROJECT_DIR"

# copy project kernel config to kernel source
$CP "$PROJECT_DIR/.config" "$KERNEL_DIR/"

# build the kernel
$MAKE -j4 zImage modules dtbs

# install files
$SUDO $MAKE modules_install
$SUDO $CP arch/arm/boot/dts/*.dtb /boot/
$SUDO $CP arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
$SUDO $CP arch/arm/boot/dts/overlays/README /boot/overlays/
$SUDO $CP arch/arm/boot/zImage /boot/$KERNEL.img

