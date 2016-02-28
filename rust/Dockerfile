FROM adamveld12/steamcmd

ENV APPID "258550"

RUN /home/steam/install.sh

ENV HOSTNAME "Docker"
ENV RCON_PASSWORD "CHANGE_ME"
ENV SEED 112588
ENV MAX_PLAYER 64

WORKDIR /home/steam/game
COPY ./startup.sh .

VOLUME ["/home/steam/game/server", "/configuration"]

EXPOSE 28015/udp 28016 28016/udp 27015

ENTRYPOINT  ./startup.sh
