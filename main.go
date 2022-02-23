// Run it with "go run main.go". Go to http://localhost:3000.
package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello world")
	})

	log.Fatal(http.ListenAndServe(":3550", nil))
}
