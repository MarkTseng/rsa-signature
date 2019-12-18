#!/bin/bash
openssl sha1 -sign my.key trail.jpg > trail.jpg.sign
openssl rsautl -pubin -inkey pub.key -in trail.jpg.sign -verify -out trail.jpg.de_sign
echo "encrypt"
openssl rsautl -pubin -inkey pub.key -in trail.jpg.sign -encrypt -raw -hexdump
echo "asn1parse"
openssl rsautl -pubin -inkey pub.key -in trail.jpg.sign -verify -asn1parse
echo "der"
openssl asn1parse -inform der -in trail.jpg.de_sign

echo "sha1 compare key"
openssl sha1 trail.jpg
