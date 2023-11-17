package main

import (
	"os"
	"testing"
)

func TestServer(t *testing.T) {
	fileName := "./app/html/index.html"

	_, error := os.Stat(fileName)

	// check if error is "file not exists"
	if os.IsNotExist(error) {
		t.Errorf("%v file does not exist\n", fileName)
	}
}
