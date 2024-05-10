#!/bin/sh

echo aaa > test.1
echo aaa > /var/test.2
echo busybox > /web/test.log
echo busybox &> /web/test2.log
echo busybox &> /mmc2/test2.log

telnetd &
nc -l -p 8080
busybox nc -l -p 8080
