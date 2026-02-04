FROM mcr.microsoft.com/devcontainers/base:ubuntu24.04

RUN apt-get update -y \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y python3 python3-pip curl python-is-python3
