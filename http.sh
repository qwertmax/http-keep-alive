#!/bin/bash
printf "GET /status/200 HTTP/1.1\r\nHost: httpbin.org\r\n\r\n" | nc httpbin.org 80
