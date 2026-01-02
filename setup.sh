#!/bin/bash
set -e

# Check if uv is installed, and install it if it is not.
if ! command -v uv &> /dev/null
then
    echo "uv not found, installing..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.cargo/bin:$PATH"
fi

uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
curl -sSL https://raw.githubusercontent.com/steveyegge/beads/main/scripts/install.sh | bash
