# BUILD_KERNEL

## NAME

build_kernel - build and install a custom kernel

## SYNOPSIS

build_kernel

## DESCRIPTION

build_kernel automates the process of building and installing a custom
kernel. It performs the following steps.

1. Install packages required to build the kernel
2. Clone (or update) the Linux source code repository
3. Clone (or update) the project repository with the kernel
   configuration file
4. Copy the configuration from the project to the kernel source
5. Build the kernel
    - A performance monitor script runs during the build to track system
      performance metrics
    - A CPU utilization script runs during the build to display CPU
      utilization graphically via the system status LED
6. Backup the existing kernel files
7. Install the new kernel files
8. Reboot the system to the new kernel

## AUTHOR
Jay Kumar