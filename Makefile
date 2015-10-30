USR ?= app
APP ?= echo
VSN ?= latest

FLAGS = -p 8888:8888 

all:
	docker build -t ${USR}/${APP}:${VSN} .

run:
	docker run -it ${FLAGS} ${USR}/${APP}:${VSN}

deb:
	docker run -it ${FLAGS} ${USR}/${APP}:${VSN} bash

