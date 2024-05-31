all: build

build:
	docker-compose build
	docker-compose up -d

pdf:
	bash scripts/makePdf.sh

compress:
	bash scripts/folderCompressor.sh

release: pdf compress
	bash scripts/release.sh

clean:
	rm -rf release/ */tex/*.pdf */*.zip

remove:
	docker-compose down
