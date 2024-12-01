# README

Docker image with ILASP running. You can pass ".las" files to it to solve them. 
Even though it is based on Docker, it is not necessary to know how to use it: just follow the instructions below. 

## Compatibility

1. **Ubuntu 22.04 (x86_64)**: tested and it works.
2. **MacOs (Apple Silicon)**: tested and it works, but it is much slower, as it must simulate the x86 architecture. For the provided 'sudoku.las', it takes around 20s. Just wait and don't kill the process.
3. **MacOs (x86_64)**: NOT tested but it should work.
   
## Installation

1. Install [Docker](https://docs.docker.com/get-started/get-docker/).
    If you are on Linux, the Docker daemon should now be running in the background. If you are on MacOs, you probably need to run the 'Docker' application to let it start.

2. Give exectution permission to the scripts 'build_docker.sh' and 'run_ilasp.sh'
    ```
   chmod +x  ...
    ```
    They will, respectively: build a docker image based on `Dockerfile', which contains ILASP; and run the container which will receive, as input, a .las file and run it using the containerized ILASP. Of course these are just utilities, you can inspect them, understand them, and, in case, run their commands directly from the terminal.

4. Run the build script and wait
   ```
   ./build_docker.sh
   ```

5. Now you can use ILASP. Test it on the sudoku specification file:
   ```
   ./run_ilasp.sh sudoku.las
   ```
    
Should be this simple. No other support will be provided.
