#!/usr/bin/env bash
set -euo pipefail

# Default to copy mode to avoid hardlink failures when cache and workspace differ.
export UV_LINK_MODE="${UV_LINK_MODE:-copy}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"
VENV_PATH="$WORKSPACE_DIR/.venv"

if [ ! -d "$VENV_PATH" ]; then
	# Ensure the latest managed Python 3.12 is installed and used
	uv python install 3.12.10
	uv venv --python 3.12.10 "$VENV_PATH"
fi

. "$VENV_PATH/bin/activate"
# Install from pyproject.toml, including the dev dependency group.
uv sync --group dev

# Auto-activate venv for future shells
if ! grep -q "source $VENV_PATH/bin/activate" /root/.bashrc; then
	printf '\nsource %s/bin/activate\n' "$VENV_PATH" >> /root/.bashrc
fi