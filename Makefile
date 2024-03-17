all: build

build:
	docker-compose up -d

pdf:
	bash script/makePdf.sh

clean:
	rm -rf problem.pdf
