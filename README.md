# CosyVerif build environment

This repository defines the build environment for CosyVerif.
It is used both for local installs, and to generate a
[Docker image](https://hub.docker.com/r/cosyverif/environment/)
usable in continuous integration tools.

## Run

To build the environment, use the following command:

```sh
  ./bin/install --help
  Usage:
    build-server [--prefix=PREFIX] [--lua=LUA_VERSION] [--in-ci]
```

The `--in-ci` parameter is only used in continuous integration or automated
builds, to remove terminal colors.
