FROM mcr.microsoft.com/devcontainers/base:ubuntu24.04

RUN apt-get update -y \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y python3 python3-pip curl \
  && curl -LsSf https://astral.sh/uv/install.sh | sh -s -- \
  && ln -s /root/.local/bin/uv /usr/local/bin/uv
