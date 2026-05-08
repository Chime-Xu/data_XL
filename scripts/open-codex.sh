#!/usr/bin/env bash
set -euo pipefail

# Start Codex from the user's home directory so the CLI opens in a familiar
# location when launched from a desktop environment.
cd "${HOME}"

if ! command -v codex >/dev/null 2>&1; then
  cat >&2 <<'MSG'
Codex CLI was not found in PATH.

Install or expose the `codex` command, then run this launcher again.
MSG
  read -r -p "Press Enter to close..." _ || true
  exit 127
fi

exec codex
