#!/bin/sh

#TODO move this to entrypoint

TAL_DIR=/home/$(whoami)/.rpki-cache/tals
TA_CER_DIR=/var/krill/data/repo/rsync/current/ta
RSYNC_URL="rsync://172.19.0.100:3001/ta/ta.cer"

# remove existing tal
rm "$TAL_DIR/ta.tal"
# remove existing ta
rm "$TA_CER_DIR/ta.cer"


# download the tal
wget --no-check-certificate https://172.19.0.100:3000/ta/ta.tal -P $TAL_DIR
# download ta's TA
wget --no-check-certificate https://172.19.0.100:3000/ta/ta.cer -P $TA_CER_DIR

# change https location of cer to the rsync location

sed -i "1s~.*~$RSYNC_URL~" "$TAL_DIR/ta.tal"
