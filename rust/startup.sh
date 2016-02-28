#!/bin/bash

echo "$HOSTNAME starting...";

if [[ -f /configuration/server.config ]]; then
  ./RustDedicated -batchmode +server.cfg /configuration/server.config;
  exit 0;
fi

./RustDedicated -batchmode \
 +server.datadir /data \
 +server.hostname $HOSTNAME \
 +server.identity "rust-server" \
 +server.seed $SEED \
 +server.serverlog 1 \
 +server.netlog 1 \
 +server.saveinternal 300 \
 +spawn.max_rate 1 \
 +server.maxplayers $MAX_PLAYERS \
 +server.port 28015 \
 +rcon.ip 0.0.0.0 \
 +rcon.port 28016 \
 +rcon.password "${RCON_PASSWORD}";
