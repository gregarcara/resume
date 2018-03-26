#!/usr/bin/env bash

docker run -v "$(pwd)":/pandoc/src pandoc "$1"
