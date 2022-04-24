# Docker for Developers - companion code Errata

Many of the chapters have had updates to language libraries via their packaging systems (for example `npm`) to avoid security problems.

## Chapter 2
The [Dockerfile](chapter2/Dockerfile) has been modified to use `ubuntu:10` as a base container, as it is the one that has a compatible PHP 7.3 runtime that the Dockerfile relies on.

##  Chapter 5
The [Dockerfile](chapter5/Dockerfile) now uses `ubuntu:focal` as a base container. It originally used `ubuntu:bionic` as a base container and the now-obsolete Node 8 runtime and npm 3.5.2 within proved to be problematic in 2021. If you enabled verbose output on NPM install, it yielded an `npm ERR! code EMISSINGARG` error similar to the problem described in the [lodash issue #4358](https://github.com/lodash/lodash/issues/4358). This is the sort of problem hinted at in Chapter 6 regarding using general-purpose OS images in the "Re-examining the initial Dockerfile" section, see pp. 122-134.

In switching from Ubuntu bionic (18.04) to focal (20.04) we also have to add an environment variable to the installation to force a non-interactive package installation, per [this Ask Ubuntu article](https://askubuntu.com/a/556387).

## Chapter 6
The [Dockerfile](chapter6/Dockerfile) has been modified to use `node:14-alpine` image which keeps Alpine Linux, but pins the version of node to Node 14, which is more stable than using the stock Alpine Docker container and installing Node using `apk`.

## Chapter 7
The [Dockerfile](chapter7/Dockerfile) has been modified to use `node:14-alpine` image which keeps Alpine Linux, but pins the version of node to Node 14, which is more stable than using the stock Alpine Docker container and installing Node using `apk`.

## Chapter 8
The [Dockerfile](chapter8/Dockerfile) has been modified to use `node:14-alpine` image which keeps Alpine Linux, but pins the version of node to Node 14, which is more stable than using the stock Alpine Docker container and installing Node using `apk`.

## Chapter 9
The [Dockerfile](chapter9/Dockerfile) has been modified to use `node:14-alpine` image which keeps Alpine Linux, but pins the version of node to Node 14, which is more stable than using the stock Alpine Docker container and installing Node using `apk`.

## Chapter 10
The [Dockerfile](chapter10/Dockerfile) has been modified to use `node:14-alpine` image which keeps Alpine Linux, but pins the version of node to Node 14, which is more stable than using the stock Alpine Docker container and installing Node using `apk`.

## Chapter 11
The [Dockerfile](chapter11/Dockerfile) has been modified to use `node:14-alpine` image which keeps Alpine Linux, but pins the version of node to Node 14, which is more stable than using the stock Alpine Docker container and installing Node using `apk`.

## Chapter 13
The [Dockerfile](chapter13/Dockerfile) has been modified to use the same Docker image printed in the book. You will still need to modify it before building, replacing `user@host` with a valid user and hostname for a server you control.

## Chapter 14
The [Dockerfile](chapter14/Dockerfile) has been modified to use an Alpine base container and fixes some erroneous smart quotes that were printed correctly in the book, but not in the repository originally.
