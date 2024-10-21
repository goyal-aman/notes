start:
	sudo docker run --rm -v $(PWD)/docs:/app httrack-downloader "http://192.168.1.100:8082/share/" -O /app "MyWebsite_2" -%P "*.*" --depth=5 --robots=0 --stay-on-same-domain 
build:
	sudo docker build -t httrack-downloader .