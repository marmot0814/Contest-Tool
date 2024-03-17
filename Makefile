all: build

build:
	docker-compose build --no-cache
	docker-compose up -d

pdf:
	bash script/makePdf.sh

compress:
	bash script/folderCompressor.sh

clean:
	rm -rf problem.pdf *.zip
