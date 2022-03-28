all: serverfunctions.zip

DATA_DIRS = $(shell find data/ -type d)
DATA_FILES = $(shell find data/ -type f -name '*')
WORLD_SAVE_LOCATION = /opt/mscs/worlds/master/world

serverfunctions.zip : pack.mcmeta ${DATA_DIRS} ${DATA_FILES}
	zip -r serverfunctions.zip data/ pack.mcmeta 

.PHONY: install
install : serverfunctions.zip
	cp serverfunctions.zip ${WORLD_SAVE_LOCATION}/datapacks/
	mscs send master reload

.PHONY: uninstall
uninstall:
	rm -rf ${WORLD_SAVE_LOCATION}/datapacks/serverfunctions.zip

.PHONY: clean
clean:
	rm -rf serverfunctions.zip