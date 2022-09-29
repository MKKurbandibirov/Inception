package main

import (
	"fmt"
	"net/http"
	"log"
)

func prompt(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "This is static site for Inception!")
}

func main() {
	http.HandleFunc("/", prompt)
	err := http.ListenAndServe("0.0.0.0:8080", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}