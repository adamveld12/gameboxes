FROM adamveld12/steamcmd

ENV APPID "258550"

RUN /home/steam/install.sh

ENV HOSTNAME "Docker"
EXPOSE 28015 28016

WORKDIR /home/steam/game
ENTRYPOINT echo "$HOSTNAME starting..." && \
          ./RustDedicated -batchmode \
           +server.datadir /data \
           +server.hostname $HOSTNAME \
           +server.identity "rust-server" \
           +server.seed 112588 \
           +server.serverlog 1 \
           +server.netlog 1 \
           +server.saveinternal 300 \
           +spawn.max_rate 1 \
           +craft.instant true \
           +server.maxplayers 64 \
           +server.port 28015 \
           +rcon.ip 0.0.0.0 \
           +rcon.port 28016 \
           +rcon.password "CHANGE_ME"
