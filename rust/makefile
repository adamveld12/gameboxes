dev: build
	docker run -it --rm -v $$PWD/data:/data -v $$PWD/configuration:/configuration -p 28016:28016 -p 28015:28015 adamveld12/rust_dedicated

run: build
	docker run -d -v $$PWD/data:/data -v $$PWD/configuration:/configuration -p 28016:28016 -p 28015:28015 adamveld12/rust_dedicated

build:
	docker build -t adamveld12/rust_dedicated .
