#!/bin/bash

# generate private key
openssl genrsa -out my.key 2048

# generate cert 
openssl req -x509 -new -nodes -key my.key -sha256 -days 3650 -out my.crt

# check private key
openssl rsa -in my.key -text -noout

# check cert
openssl x509 -in my.crt -text -noout

# public key
openssl rsa -in my.key -pubout -out pub.key

