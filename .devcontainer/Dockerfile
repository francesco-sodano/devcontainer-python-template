FROM mcr.microsoft.com/devcontainers/base:ubuntu24.04

RUN apt-get update -y \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y python3 python3-pip curl python-is-python3\
  && curl -LsSf https://astral.sh/uv/install.sh | sh -s -- \
  && ln -s /root/.local/bin/uv /usr/local/bin/uv

# Install dev tools for formatting, linting, and tests
COPY requirements-dev.txt /tmp/requirements-dev.txt
RUN uv pip install --system -r /tmp/requirements-dev.txt && rm -f /tmp/requirements-dev.txt
