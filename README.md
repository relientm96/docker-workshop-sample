# Docker Workshop Sample

## Task

Create an image that runs `src/index.js` that logs out your name with the [pino-pretty](https://github.com/pinojs/pino-pretty) Javascript library.

## Setup

1. Have Docker Desktop running locally. Use `docker ps` to check.

2. Clone this repository.

3. Update `src/index.js` to log your name.

4. Edit and add instructions to `Dockerfile`. Take note of the following keywords from the [docs](https://docs.docker.com/engine/reference/builder/).
    - `FROM`
    - `RUN`
    - `COPY`
    - `CMD`
    - `WORKDIR`

5. Build an image with your `Dockerfile`:
  
    ```bash
    docker build . -t <your_custom_image_name>
    ```

6. Run a container from your build image:

    ```bash
    docker run -it --init <your_custom_image_name>
    ```
