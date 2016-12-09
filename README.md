# docker-intranet

Easy way to get started with a small intranet.

## How to Install

Go to the [Docker Install Page][1] and install Docker for the appropriate
platform you are running on. If you are using Linux, please continue to follow
the directions [here][2] to install `docker-compose`.

## How to Run

Simply `cd` into the `docker-intranet` repo's directory and run:

```bash
docker-compose up --build
```

This will build and start the container which will be the most usual case. If
there are no changes that need to be made, and you just want to start the
container, you may omit the `--build` flag.

To stop the container, `cd` into the `docker-intranet` repo's directory and run:

```bash
docker-compose down
```

## Environmental Variables

`docker-intranet` has a few simple variables you may set when building for easy
customization. Set these variables when you build with `docker-compose`. Follow
the example below:

```bash
HOST_PORT=8080 HTTP_USERNAME=admin HTTP_PASSWORD=supersecret docker-compose up --build
```

### `HOST_PORT`

*   Default: `80`

This is the port which the container will bind to on the host. For production
you may want to set this to `80`, but for local development it may make more
sense to run on `8080`.

### `HTTP_USERNAME`

*   Default `username`

This is the username that will be prompted for when trying to access the
website.

### `HTTP_PASSWORD`

*   Default `password`

This is the password that will be prompted for when trying to access the
website.

[1]: https://www.docker.com/products/overview#/install_the_platform
[2]: https://docs.docker.com/compose/install/
