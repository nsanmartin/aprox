all: clean-jekyll publish-org

clean-jekyll:
	find ./jekyll/_posts -type f -exec rm {} \;



publish-org:
	./elisp/publish-org.el


