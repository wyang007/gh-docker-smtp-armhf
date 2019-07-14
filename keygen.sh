#!/bin/sh

cd /tmp
SUBJ="/C=US/ST=CA/O=Home"
openssl genrsa -des3 -out my.key 2048
openssl req -new -batch -subj $SUBJ -key my.key -out my.csr
openssl rsa -in my.key -out me.key
openssl x509 -req -days 3651 -in my.csr -signkey me.key -out me.crt
