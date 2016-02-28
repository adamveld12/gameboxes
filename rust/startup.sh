#!/bin/bash
set -euo pipefail;

CONFIG_PATH="/home/steam/game/server/rust_server/cfg";
LOG_PATH="/home/steam/game/logfile.txt";

if [[ -f /configuration/server.cfg ]]; then
  echo "Found a custom server.cfg, linking into ${CONFIG_PATH}...";
  mkdir -p $CONFIG_PATH;
  ln -sf /configuration/server.cfg $CONFIG_PATH/server.cfg;
fi

./RustDedicated -batchmode -load +server.identity "rust_server" -logfile $LOG_PATH &

sleep 2;
tail -f $LOG_PATH;
/bin/bash;
