BIN = README.html

.PHONY: directories
all : $(BIN)

README.html : README.md
	pandoc -s -c pandoc.css --metadata pagetitle="游戏开发记事本"  README.md -o README.html

clean :
	rm *~ $(BIN)
