#!/bin/bash
gcc server.c -lfcgi -o server
service nginx start
spawn-fcgi -p 8080 -n ./server
/bin/bash