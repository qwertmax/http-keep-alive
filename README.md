# HTTP keep alive

## Regular HTTP request

```bash
printf "GET /status/200 HTTP/1.1\r\nHost: httpbin.org\r\n\r\n" | nc httpbin.org 80
```

as a result we will see next:

```shell
HTTP/1.1 200 OK
Connection: keep-alive
Server: meinheld/0.6.1
Date: Tue, 10 Apr 2018 13:39:16 GMT
Content-Type: text/html; charset=utf-8
Access-Control-Allow-Origin: *
Access-Control-Allow-Credentials: true
X-Powered-By: Flask
X-Processed-Time: 0
Content-Length: 0
Via: 1.1 vegur
```

## Keep Alive HTTP request

```bash
cat <(printf "GET /status/200 HTTP/1.1\r\nHost: httpbin.org\r\nConnection: keep-alive\r\n\r\n") \
      <(printf "GET /status/200 HTTP/1.1\r\nHost: httpbin.org\r\nConnection: close\r\n\r\n") \
  | nc httpbin.org 80
```
