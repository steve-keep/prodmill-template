#!/bin/bash

uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
curl -sSL https://raw.githubusercontent.com/steveyegge/beads/main/scripts/install.sh | bash
