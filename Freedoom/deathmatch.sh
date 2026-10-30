#!/usr/bin/env bash
set -euo pipefail

WAD="$HOME/Games/Freedoom/freedm.wad"

if ! command -v odasrv >/dev/null 2>&1; then
    echo "Error: odasrv is not installed or not on PATH."
    exit 1
fi

if [[ ! -r "$WAD" ]]; then
    echo "Missing WAD: $WAD"
    exit 1
fi

exec odasrv \
    -iwad "$WAD" \
    +sv_hostname "FreeDM LAN" \
    +sv_maxplayers 4 \
    +sv_gametype 1 \
    +map MAP01
