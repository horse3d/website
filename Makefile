

all: doc
	@echo "Done!"

doc:
	cd external/horse64 && make doc
	chown -R 1011:1011 ./api/ || exit 0
	rm -rf ./Font-Awesome/
	cp -R ./external/Font-Awesome/ ./Font-Awesome/
	chown -R 1011:1011 ./Font-Awesome/
	chown -R 1011:1011 ./font/
	chmod -R a+r ./
