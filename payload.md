


```
# enable multi SSID
goformId:SET_WIFI_INFO
isTest:false
m_ssid_enable:1

# set Second SSID

goformId:SET_WIFI_SSID2_SETTINGS
isTest:false
m_SSID:AAA
m_HideSSID:0
m_MAX_Access_num:2
m_AuthMode:OPEN
cipher:2
m_EncrypType:NONE


goformId:HTTPSHARE_NEW
path_SD_CARD:/mmc2//d/ttttt
path_SD_CARD_time:2024-05-07 13:29:45
path_SD_CARD_time_unix:1715088586


goformId:HTTPSHARE_FILE_RENAME
path_SD_CARD:/mmc2/
OLD_NAME_SD_CARD:/mmc2//a.txt
NEW_NAME_SD_CARD:/mmc2//asdf.txt
path_SD_CARD_time:2024-05-07 13:31:30
path_SD_CARD_time_unix:1715088691
```

## ACtivate web SHare
```
isTest:false
goformId:HTTPSHARE_MODE_SET
mode_set:

isTest:false
goformId:GOFORM_HTTPSHARE_CHECK_FILE
path_SD_CARD:/mmc2/

isTest:false
goformId:HTTPSHARE_AUTH_SET
HTTP_SHARE_STATUS:Enabled
HTTP_SHARE_WR_AUTH:readWrite
HTTP_SHARE_FILE:/mmc2/
```

```sh
curl 'http://192.168.0.1/goform/goform_set_cmd_process' -D 'isTest=false&goformId=HTTPSHARE_ENTERFOLD&path_SD_CARD=/mmc2/&indexPage=1'

watch bash '-c "curl -qs 'http://192.168.0.1/goform/goform_set_cmd_process' -d \"isTest=false&goformId=HTTPSHARE_ENTERFOLD&path_SD_CARD=/mmc2/s/&indexPage=1\" | jq \".result\""'
```