# huhgawz/oraclelinux-oraclejdk

## Introduction

Dockerized `Oracle Linux` with `Oracle JDK`.

## Installation

Automated builds of the image are available at: [huhgawz/oraclelinux-oraclejdk](https://hub.docker.com/r/huhgawz/oraclelinux-oraclejdk/)

This is the recommended installation method:

```sh
$ docker pull huhgawz/oraclelinux-oraclejdk
```

Alternatively you can build the image locally:

```sh
$ git clone https://github.com/huhgawz/docker-oraclelinux-oraclejdk.git
$ cd docker-oraclelinux-oraclejdk
$ docker build --tag=$USER/oraclelinux-oraclejdk .
