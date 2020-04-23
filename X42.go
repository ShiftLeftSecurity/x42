package main

import "os"

func main() {
	if len(os.Args) > 1 && os.Args[1] == "42" {
		os.Stderr.WriteString("It depends!\n")
		os.Exit(42)
	}
	os.Stdout.WriteString("What is the meaning of life?\n")
}

