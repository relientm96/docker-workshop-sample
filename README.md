# Docker Workshop Sample

## Task

Create an image that runs `src/index.js` that logs out your name with the [pino-pretty](https://github.com/pinojs/pino-pretty) Javascript library.

## Setup

1. Have Docker Desktop running locally. Use `docker ps` to check.

2. Clone this repository.

3. Update `src/index.js` to log your name.

4. Edit and add instructions to `Dockerfile`. Take note of the following keywords from the [documentation](https://docs.docker.com/engine/reference/builder/).
    - `FROM`
        ```Dockerfile
        # Telling Docker to pull and use this parent base image from Dockerhub
        FROM node:16-alpine
        ```
    - `RUN`
        ```Dockerfile
        # Telling Docker to run a command when building the image
        # eg: Installing dependencies with yarn
        RUN yarn install
        ```
    - `COPY`
        ```Dockerfile
        # Copy a file from host to container
        # Usage: COPY <SOURCE_PATH_ON_HOST> <DESTINATION_PATH_ON_CONTAINER>
        # eg: Copying a package.json file to root level of container
        COPY package.json package.json
        ```
    - `CMD`
        ```Dockerfile
        # Actual command to execute when running the container
        # Eg: Running a node js script
        CMD ["node", "my-node-js-script.js"]
        ```

5. Build an image with your `Dockerfile`:
  
    ```bash
    docker build . -t <your_custom_image_name>
    ```

6. Run a container from your build image:

    ```bash
    docker run -it --init <your_custom_image_name>
    ```
