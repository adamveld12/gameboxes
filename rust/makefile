dev: build
	docker run -it --rm -v $$PWD/data:/home/steam/game/server/rust_server/ \
		--entrypoint /bin/bash \
		-p 27015:27015 -p 27015:27015/udp \
		-p 28016:28016 -p 28016:28016/udp \
		-p 28015:28015/udp \
		adamveld12/rust_dedicated

run: build
	docker run -d -v $$PWD/data:/home/steam/game/server/rust_server/ \
		-p 27015:27015 -p 27015:27015/udp \
		-p 28016:28016 -p 28016:28016/udp \
		-p 28015:28015/udp \
		adamveld12/rust_dedicated

build:
	docker build -t adamveld12/rust_dedicated .

push: build
	docker push adamveld12/rust_dedicated

