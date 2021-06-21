#!/bin/bash

#Top 10 IP Addresses
awk '{ print $1}' /etc/httpd/conf/httpd.conf | sort | uniq -c | sort -nr | head -n 10