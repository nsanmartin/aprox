HUGO=/home/linuxbrew/.linuxbrew/Cellar/hugo/0.63.2/bin/hugo

publish-org:
	./elisp/publish-org.el


publish-site:
	$(HUGO)

server:
	$(HUGO) server --disableFastRender

server-lan:
	$(HUGO) server --bind=192.168.1.12 --baseURL=http://192.168.1.12:1313
