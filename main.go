package main

import (
	"github.com/cellois/go-start-disco/cmd"
)

var (
	// VERSION set during build?
	VERSION = "0.0.1"
)

func main() {
	cmd.Execute()
	println("Test2")

}
