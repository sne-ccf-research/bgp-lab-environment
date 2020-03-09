#!/bin/bash

export KRILL_TEST="true"
export KRILL_CLI_SERVER="https://127.0.0.1:3000/"
export KRILL_CLI_TOKEN="we-go-hard"
export KRILL_CLI_MY_CA="ccf-ca" 
export KRILL_USE_TA="true"


krillc add -c $KRILL_CLI_MY_CA
krillc repo request --ca ccf-ca > publisher_request.xml
krillc publishers add -p ccf-ca --rfc8183 publisher_request.xml > repostiroy_response.xml
krillc repo update embedded --ca ccf-ca
krillc parents request --ca ccf-ca > myid.xml
#cargo run --bin krillc children add remote --ca ta --child ccf-ca --ipv4 "10.0.0.0/8" --ipv6 "2001:DB8::/32" --rfc8183 myid.xml > parent-res.xml 
krillc children add embedded --ca ta --child ccf-ca --ipv4 "10.0.0.0/8" --ipv6 "2001:DB8::/32"
krillc parents add embedded --parent ta 
#cargo run --bin krillc parents add remote --parent ta --rfc8183 ./parent-res.xml --ca ccf-ca
krillc roas update --delta ./roas.txt --ca ccf-ca

