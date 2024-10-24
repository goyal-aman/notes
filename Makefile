start:
	sudo docker run --rm -v ./docs:/app httrack-downloader "http://192.168.1.100:8082/share/" -v -c100 -N4 -O /app -%P "*.*"  --robots=0 "-*www.w3.org*" "-*aws*"
	sudo cp ./robots.txt ./docs
	sudo cp -r  ~/../../../DATA/AppData/trilium/data/backup/ .
	sudo echo $(TZ='Asia/Kolkata' date) >> 'run.logs'
	@make commit-add
	@make commit-push
	@make log-run
build:
	sudo docker build -t httrack-downloader .
nest:
	make log-run
commit-add:
	sudo git add ./docs
	sudo git add ./backup
	sudo git add run.logs
	sudo git commit  -m "updated"
commit-push:
	git push origin main
log-run:
	@sudo sh -c "echo $$(TZ='Asia/Kolkata' date) >> run.logs" 
