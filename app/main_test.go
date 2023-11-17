package main

import (
	"net/http"
	"net/http/httptest"
	"testing"
)

func pingtest(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("pong"))
}

func TestPingEndpoint(t *testing.T) {
	// Create a request to the /ping endpoint
	req, err := http.NewRequest("GET", "/ping", nil)
	if err != nil {
		t.Fatal(err)
	}

	// Create a ResponseRecorder to record the response
	rr := httptest.NewRecorder()

	// Create an HTTP handler using the PingHandler function
	handler := http.HandlerFunc(pingtest)

	// Serve the HTTP request to the ResponseRecorder
	handler.ServeHTTP(rr, req)

	// Check the status code
	if status := rr.Code; status != http.StatusOK {
		t.Errorf("Handler returned wrong status code: got %v want %v",
			status, http.StatusOK)
	}

	// Check the response body
	expected := "pong"
	if rr.Body.String() != expected {
		t.Errorf("Handler returned unexpected body: got %v want %v",
			rr.Body.String(), expected)
	}
}
