FROM adamveld12/steamcmd

ENV APPID "258550"

RUN ./install.sh && \
    mkdir -p ./steam/game/server/rust_server/cfg/

WORKDIR /home/steam/game

COPY /configuration/server.cfg /configuration/server.cfg
COPY ./startup.sh .

VOLUME ["/home/steam/game/server/rust_server"]

EXPOSE 28015/udp 28016 28016/udp 27015

ENTRYPOINT  ./startup.sh
