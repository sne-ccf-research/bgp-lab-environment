#!/bin/bash

sleep 5
krillc add -c CCF-CA
krillc repo request -c CCF-CA > publisher_request.xml
krillc publishers add -p CCF-CA --rfc8183 publisher_request.xml > /dev/null
krillc repo update embedded -c CCF-CA
krillc parents request -c CCF-CA > myid.xml
krillc children add embedded -c ta --child CCF-CA -4 "172.19.0.100" > /dev/null
krillc parents add embedded -p ta
