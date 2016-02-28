FROM adamveld12/steamcmd

ENV APPID "258550"

RUN /home/steam/install.sh

ENV HOSTNAME "Docker"
ENV RCON_PASSWORD "CHANGE_ME"
ENV SEED 112588
ENV MAX_PLAYER 64


WORKDIR /home/steam/game
COPY ./startup.sh .
COPY ./configuration/server.config /configuration/server.config
VOLUME ["/data", "/configuration"]

EXPOSE 28015/udp 28016 27015

ENTRYPOINT  ./startup.sh
