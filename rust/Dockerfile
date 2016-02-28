FROM adamveld12/steamcmd

ENV APPID "258550"

RUN /home/steam/install.sh

ENV HOSTNAME "Docker"
ENV RCON_PASSWORD "CHANGE_ME"
ENV SEED 112588
ENV IDENTITY "rust-server"
EXPOSE 28015 28016 27015

WORKDIR /home/steam/game
ENTRYPOINT echo "$HOSTNAME starting..." && \
          ./RustDedicated -batchmode \
           +server.datadir /data \
           +server.hostname $HOSTNAME \
           +server.identity $IDENTITY \
           +server.seed $SEED \
           +server.serverlog 1 \
           +server.netlog 1 \
           +server.saveinternal 300 \
           +spawn.max_rate 1 \
           +craft.instant true \
           +server.maxplayers 64 \
           +server.port 28015 \
           +rcon.ip 0.0.0.0 \
           +rcon.port 28016 \
           +rcon.password "${RCON_PASSWORD}"
