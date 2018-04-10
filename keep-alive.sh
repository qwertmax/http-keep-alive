#!/bin/bash
cat <(printf "GET /status/200 HTTP/1.1\r\nHost: httpbin.org\r\nConnection: keep-alive\r\n\r\n") \
      <(printf "GET /status/200 HTTP/1.1\r\nHost: httpbin.org\r\nConnection: close\r\n\r\n") \
  | nc httpbin.org 80
