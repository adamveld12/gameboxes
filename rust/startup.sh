#!/bin/bash


if [[ -f ./cfg/server.cfg ]]; then
  echo "Starting from server config";
  ./RustDedicated -batchmode -load +server.seed $SEED;
  exit 0;
fi

echo "$HOSTNAME starting...";
./RustDedicated -batchmode \
 +server.datadir /data \
 +server.hostname $HOSTNAME \
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
