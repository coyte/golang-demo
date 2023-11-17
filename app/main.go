package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	Webserver("./app/html")

}

func Webserver(path string) {
	fileServer := http.FileServer(http.Dir(path)) // New code
	http.Handle("/", fileServer)                  // New code
	http.HandleFunc("/ping", ping)                // Test function

	fmt.Printf("Starting webserver at port 8080\n")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatal(err)
	}
}

func ping(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "pong\n")
}
