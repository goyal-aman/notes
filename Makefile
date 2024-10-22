start:
	sudo docker run --rm -v ./docs:/app httrack-downloader "http://192.168.1.100:8082/share/" -v -c100 -N4 -O /app -%P "*.*" --robots=0 "-*www.w3.org*"
	sudo cp ./robots.txt ./docs
	sudo cp -r  ~/../../../DATA/AppData/trilium/data/backup/ .
build:
	sudo docker build -t httrack-downloader .
