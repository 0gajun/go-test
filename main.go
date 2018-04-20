package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		fmt.Fprintf(w, "This is a test go server\n")
	})

	http.ListenAndServe(":8080", nil)
}
