# Docker Workshop Sample

Sample workshop to build a simple image.

## Task

Create an image that runs `src/index.js` that logs out your name with the [pino-pretty](https://github.com/pinojs/pino-pretty) Javascript library.

When running step 6, the output should look soemthing like this:

![image](https://user-images.githubusercontent.com/37989130/155078710-56006534-92ce-4d5e-b144-6f41a6b7fdde.png)

## Setup

1. Have Docker Desktop running locally. 
  
   Run the following check if it is running successfully.
   
   ```bash
   docker ps
   ```

2. Clone this repository.

    ```bash
    git clone git@github.com:relientm96/docker-workshop-sample.git
    ```

3. Update `src/index.js` to log your name.

4. Edit and add instructions to `Dockerfile`.
   (Take a look at [Commands](#Commands) for a list of commands you should use to achieve this task.)

5. Build an image with your `Dockerfile`:
  
    ```bash
    docker build . -t <your_custom_image_name>
    ```
    
    - `build` tells docker to build an image from a given Dockerfile.
    - `.` tells docker to use the Dockerfile in the same working directory as where you called the docker command.
    - `-t` applies a tag to your image, which labels your image.
    - `<your_custom_image_name>` is a name that you can choose to label this image.

6. Run a container from your build image:

    ```bash
    docker run -it <your_custom_image_name>
    ```
    
    - `run` tells docker to execute what is defined in `CMD` in your Dockerfile.
    - `-it` runs the container in interactive mode.
    - `<your_custom_image_name>` tells docker which image to run.

7. (Optional) - If you would like to see how your container looks like:

    ```bash
    docker run -it <your_custom_image_name> sh
    
    # You should be inside your container from here.
    # Use ls to see how it looks like internally and explore!
    ls 
    ```
    
    - `sh` tells docker to run the container with the [Bourne Shell](https://en.wikipedia.org/wiki/Bourne_shell).


## Commands

Take note of the following Dockerfile commands from the [documentation](https://docs.docker.com/engine/reference/builder/).

- `FROM`: Telling Docker which base image to use.

    ```Dockerfile
    # Usage: FROM <IMAGE_NAME>:<TAG>
    # Eg: Using node:16-alpine image from Dockerhub
    FROM node:16-alpine
    ```

- `RUN`: Telling Docker command to run when **building** the image.

    ```Dockerfile
    # Usage: RUN <COMMAND_TO_RUN>
    # eg: Installing dependencies with yarn
    RUN yarn install
    ```

- `COPY`: Copy a file from host (i.e your laptop) to container.

    ```Dockerfile
    # Usage: COPY <SOURCE_PATH_ON_HOST> <DESTINATION_PATH_ON_CONTAINER>
    # eg: Copying a package.json file to root level of container
    COPY package.json package.json
    ```

- `CMD`: Command to execute when **running** the image.

    ```Dockerfile
    # Usage: CMD ["<COMMAND>", "<ARG_1>"...]
    # Eg: Running a node js script
    CMD ["node", "my-node-js-script.js"]
    ```
