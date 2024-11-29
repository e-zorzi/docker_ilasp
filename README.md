# README

This has been tested on Ubuntu 22.04 (x86_64) and MacOs M1 (arm64/v8). It will run much slower on the M1 as it must simulate the other architecture to run. 

It is based on Docker, but it is not necessary to know how to use it: just follow the instructions below. 


## Installation

1. Install [Docker](https://docs.docker.com/get-started/get-docker/).
    If you are on Linux, the Docker daemon should now be running in the background. If you are on MacOs, you probably need to run the `Docker' application to let it start.

2. Give exectution permission to the scripts `build_docker.sh` and `run_ilasp.sh` 
    > chmod +x  ...

    They will, respectively: build a docker image based on `Dockerfile', which contains ILASP; run the container which will receive, as input, a .las file and run it using the containerized ILASP

3. Run the build script
   > ./build_docker.sh

4. Now you can use ILASP. Test it on the sudoku specification file:
   > ./run_ilasp.sh sudoku.las
    