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
krillc children add embedded --ca ta --child ccf-ca --ipv4 "100.0.0.0/8,200.0.0.0/8"
krillc parents add embedded --parent ta 
krillc roas update --delta ./roas.txt --ca ccf-ca

