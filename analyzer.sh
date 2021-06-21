#!/bin/bash

#Top 10 IP Addresses
awk '{ print $1}' /etc/httpd/conf/httpd.conf | sort | uniq -c | sort -nr | head -n 10

#Top URLs With view count
cat /etc/httpd/conf/httpd.conf | awk -F\" '{print $2}' | awk '{print $2}' | sed '/^$/d' | sed 's/\?.*//g' | sort | uniq -c | sort -rn

#Top Browsers
awk -F\" '{print $6}' /etc/httpd/conf/httpd.conf | sed 's/(\([^;]\+; [^;]\+\)[^)]*)/(\1)/' | sort | uniq -c | sort -fr