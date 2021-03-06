BUILDOPTS=-Xlinker -L/usr/lib

SWIFTC=swiftc
SWIFT=swift
ifdef SWIFTPATH
    SWIFTC=$(SWIFTPATH)/bin/swiftc
    SWIFT=$(SWIFTPATH)/bin/swift
endif
OS := $(shell uname)
ifeq ($(OS),Darwin)
    SWIFTC=xcrun -sdk macosx swiftc
		BUILDOPTS=-Xlinker -L/usr/local/lib
endif

all: build
	
build:
	$(SWIFT) build $(BUILDOPTS)
	
test:
	$(SWIFT) test $(BUILDOPTS) 
