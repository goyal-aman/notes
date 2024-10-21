start:
	sudo docker run --rm -v $(PWD)/docs:/app httrack-downloader "http://192.168.1.100:8082/share/" -O /app -%P "*.*" --robots=0 "-*www.w3.org*"
build:
	sudo docker build -t httrack-downloader .