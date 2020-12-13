# go-start-disco

Go first install steps

# macOS install fix

1. gvm install go1.8 -B
2. gvm use go1.8 --default
3. export GOROOT_BOOTSTRAP=$GOROOT
4. gvm install go1.13 (whatever version after 1.8 you want to install, in my case i want to use 1.13)

? May disregard above
Alt fix may have been problem specifically with gvm 1.15.6 ... no built in stdlib packages found... but 1.15 and previous versions work...

GG deprecation and incompatibility of minor versions
Seemed to "just work" on Windows straight install without worrying about gvm.

go get -u github.com/spf13/cobra/cobra
