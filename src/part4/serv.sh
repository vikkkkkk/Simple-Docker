#!/bin/bash
gcc server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
service nginx start
/bin/bash