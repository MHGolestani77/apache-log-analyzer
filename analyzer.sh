#!/bin/bash
logs="/etc/httpd/conf/httpd.conf"
while IFS= read -r line
do
  echo "$line"
done < "$logs"