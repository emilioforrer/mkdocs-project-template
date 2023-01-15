#!/bin/bash

apt-get update
apt-get install -y git bash-completion make curl wget inotify-tools
pip install mkdocs-material==${MKDOCS_VERSION}