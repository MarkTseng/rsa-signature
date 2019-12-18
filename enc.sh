#!/bin/bash

#openssl rsautl -pubin -inkey pub.key -in trail.jpg -encrypt -out enc-trail.jpg
openssl smime -encrypt -binary -aes-256-cbc -in trail.jpg -out trail.jpg.enc -outform DER my.crt
openssl smime -decrypt -binary -in trail.jpg.enc -inform DER -out trail.jpg.orig -inkey my.key 

