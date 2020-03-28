.PHONY: mvrk site
default: site

mvrk:
	git pull
	git submodule update --init --recursive
	cd Maverick && git pull origin master --rebase
	git add .
	git commit -m "Update Maverick"
	git push

site:
	git pull
	git add .
	git commit -m "Update site ${msg}"
	git push
