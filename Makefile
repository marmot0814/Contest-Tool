all: build

build:
	docker-compose build
	docker-compose up -d

pdf:
	bash script/makePdf.sh

compress:
	bash script/folderCompressor.sh

clean:
	rm -rf tex/main.pdf *.zip

remove:
	docker-compose down
