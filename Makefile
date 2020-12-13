# Tabs are an enforced requirement for Makefile
# Spaces workaround does not work
# - WARNING: This only works with GNU Make <= 4.2 ?
# e.g. macOS GNU Make 3.81
# .RECIPEPREFIX += 
# GNU Make >= 4.3
# .RECIPEPREFIX := $(.RECIPEPREFIX)<space>
.RECIPEPREFIX +=
VERSION=0.0.2
PATH_BUILD=build/
FILE_COMMAND=go-start-disco
FILE_ARCH=darwin_amd64

clean:
	@rm -rf ./build

build: clean
	@$(GOPATH)/bin/goxc \
		-bc="darwin,amd64" \
		-pv=$(VERSION) \
		-d=$(PATH_BUILD) \
		-build-ldflags "-X main.VERSION=$(VERSION)"

version:
	@echo $(VERSION)

install:
	install -d -m 755 '$(HOME)/bin/'
	install $(PATH_BUILD)$(VERSION)/$(FILE_ARCH)/$(FILE_COMMAND) '$(HOME)/bin/$(FILE_COMMAND)'