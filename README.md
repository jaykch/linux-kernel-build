Linux Kernel Build  &middot; [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/jaykch/microbit-media-controller/blob/master/LICENSE)
=======
A kernel building project that uses scripts to build kernel on a Raspberry Pi 4 and monitors and logs the build performance in easy to understand graphs.

## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Author](#author)
* [License](#license)

## About The Project
The project has 4 scripts which each perform parts of this project.

* **Kickstart:**  Fetches all needed resources and starts the entire build process. 
* **Config:**  Kernel configuration with appropriate options like disabled webcam etc.
* **Build:**  Build script to fetch all kernel build dependency, backup old kernel and start the performance monitoring scripts.
* **Performance Monitor:**  Read and log Raspberry Pi performance while building a kernel.
* **Status LED:**  Flash status LEDs depending on the CPU load for visual feedback.
* **Graphs:**  Graphs showing system performance during kernel build.

### Built With
This project uses the following hardware.
* [Raspberry Pi 4](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/)

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 
See deployment for notes on how to deploy the project on a live system.

### Prerequisites
Here is the list of all the prerequisites you would need to install on your system in order to run this device
* A Machine with a Linux operating system, preferably Ubuntu 16+

### Installation
1. Extract the s3770282-A2.tar.gz file provided.
2. Go into the folder
    ```sh
    cd s3770282-A2
    ```
2. Go into the folder
    ```sh
    sudo ./kickstart
    ```


## Author
* **Jay Kumar** - *Complete Development* - [jaykch.com](http://www.jaykch.com/)

## License
This project is licensed under the MIT License - see the [LICENSE.md](/LICENSE) file for details