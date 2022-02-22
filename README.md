# Docker Workshop Sample

## Task

Create an image that runs `src/index.js` that logs out your name with the [pino-pretty](https://github.com/pinojs/pino-pretty) Javascript library.

## Setup

1. Have Docker Desktop running locally.

2. Clone this repository.

3. Edit and add instructions to `Dockerfile`. Take note of the following keywords from the [docs](https://docs.docker.com/engine/reference/builder/).
    - `FROM`
    - `RUN`
    - `COPY`
    - `CMD`

4. Build an image with your `Dockerfile`:
  
    ```bash
    docker build . -t <your_custom_image_name>
    ```

5. Run a container from your build image:

    ```bash
    docker run -it --init <your_custom_image_name>
    ```
