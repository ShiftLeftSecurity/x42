package main

import "fmt"
import "os"

func main() {
	if len(os.Args) > 1 && os.Args[1] == "42" {
		panic("It depends!")
	}
	fmt.Println("What is the meaning of life?")
}

