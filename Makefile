SRC := DEBIAN usr
OUT := build
TAR := $(OUT)/bych4n-wallpaper

all: build

build:
	mkdir -vp $(OUT) $(TAR)
	cp -vr $(SRC) $(TAR)
	dpkg-deb --build $(TAR)

clean:
	rm -vrf $(OUT)

.PHONY: all build clean
