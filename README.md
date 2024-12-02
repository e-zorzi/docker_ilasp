# README

Docker image with ILASP. This is a *drop-in replacement* for ILASP: you can pass ".las" files to solve them. 
So, instead of calling `ILASP <file>` you will call `d-ilasp <file>`.

Even though it is based on Docker, it is not necessary to know how to use it: it is very simple, just follow the instructions below. 

## Compatibility

1. **Ubuntu 22.04 (x86_64) and 20.04 (x86_64)**: tested and it works.
2. **MacOs (Apple Silicon)**: tested and it works, but it is much slower, as it must simulate the x86 architecture. For the provided 'sudoku.las', it takes around 20s. Just wait and don't kill the process.
3. **MacOs (x86_64)**: NOT tested but it should work.
4. **Windows**: NO IDEA if it works (I never use Windows)
   
## Installation

1. Install [Docker](https://docs.docker.com/engine/install/) (or [Docker desktop](https://docs.docker.com/get-started/get-docker/)).
    If you are on Linux, the Docker daemon should now be running in the background. If you are on MacOs, you probably need to run the 'Docker' application to start it.

2. Give exectution permission to the scripts 'build_docker.sh', 'run_ilasp.sh' and 'read_file.sh'.
    ```
   chmod +x  ...
    ```
    They will, respectively: build a docker image based on `Dockerfile', which contains ILASP; and run the container which will receive, as input, a .las file and run it using the containerized ILASP. Of course these are just utilities, you can inspect them, understand them, and, in case, run their commands directly from the terminal.

4. Run the build script and wait
   ```
   ./build_docker.sh
   ```

   If it gives you an error, try `sudo ./build_docker.sh`.

5. Now you can use ILASP. Test it on the sudoku specification file:
   ```
   ./run_ilasp.sh sudoku.las
   ```
6. Now you can use run_ilasp.sh as a drop-in replacement for ILASP. Add it to your PATH to run it anywhere, e.g.
   ```
   sudo cp run_ilasp.sh /usr/local/bin/d-ilasp
   ```

   Now you can use `d-ilasp` (docker-ilasp) instead of `ILASP` in your terminal. **NOTE**: this requires the Docker daemon/Docker desktop to be running in the background (which should be the default on Linux), because of course it calls the Docker container to run ILASP everytime you call it.
   
Should be this simple. No other support will be provided.
