#!/bin/bash


if [[ -f /configuration/server.cfg ]]; then
  echo "Loading settings from server.cfg...";
  mkdir -p /home/steam/game/server/rust_server/cfg;
  ln -s /configuration/server.cfg /home/steam/game/server/rust_server/cfg/server.cfg;
  ./RustDedicated -batchmode -load +server.identity "rust_server" -logfile "./logfile.txt";
  exit 0;
fi

echo "$HOSTNAME starting...";
./RustDedicated -batchmode \
 +server.datadir /data \
 +server.hostname $HOSTNAME \
 +server.identity "rust_server" \
 +server.seed $SEED \
 +server.serverlog 1 \
 +server.netlog 1 \
 +server.saveinternal 300 \
 +spawn.max_rate 1 \
 +server.maxplayers $MAX_PLAYERS \
 +server.port 28015 \
 +rcon.ip 0.0.0.0 \
 +rcon.port 28016 \
 +rcon.password "${RCON_PASSWORD}" \
 -logfile "./logfile.txt";
