# freecad-builder

Docker container to build and run freecad


## quickstart

    build-container.sh
    build-freecad.sh

## clear a build (from the host)

    rm -rf freecad-bin/*

## dependencies

    docker

## directories

* docker : docker file for the build container
* freecad-bin : output directory for the compiled binary
* freecad-other : other input files for the container (like build.sh)
* freecad-source : git submodule containing source to be compiled
