all: clean-jekyll publish-org

clean-jekyll:
	rm ./jekyll/_posts/*



publish-org:
	./elisp/publish-org.el


