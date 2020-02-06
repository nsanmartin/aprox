HUGO=/home/linuxbrew/.linuxbrew/Cellar/hugo/0.63.2/bin/hugo


publish: publish-org
	export HUGO_ENV="production"; $(HUGO) 


publish-org:
	./elisp/publish-org.el


server:
	$(HUGO) server --disableFastRender

server-lan:
	$(HUGO) server --bind=192.168.1.12 --baseURL=http://192.168.1.12:1313
