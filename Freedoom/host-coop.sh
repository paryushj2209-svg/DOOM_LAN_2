#!/usr/bin/env bash
set -euo pipefail

WAD="$HOME/Games/Freedoom/freedoom2.wad"

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
    +sv_hostname "Freedoom Co-op LAN" \
    +sv_maxplayers 4 \
    +sv_gametype 0 \
    +sv_nomonsters 0 \
    +map MAP01
