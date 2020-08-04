

all: update-stuff
	@echo "Done!"

update-stuff:
	cp external/horse64/misc/logoicon.ico ./favicon.ico
	cp external/horse64/misc/logo.png ./horse64logo.png
	cp external/horse64/misc/logosmall.png ./horse64logosmall.png
	#cd external/horse64 && make doc
	#chown -R 1011:1011 ./api/ || exit 0
	rm -rf ./Font-Awesome/
	cp -R ./external/Font-Awesome/ ./Font-Awesome/
	chown -R 1011:1011 ./Font-Awesome/
	chown -R 1011:1011 ./font/
	chmod -R a+r ./
