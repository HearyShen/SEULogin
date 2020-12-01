#!/bin/bash

# SEULogin by HearyShen (2020.12.1)
# Refer to GitHub<https://github.com/HearyShen/SEULogin> for support.

echo -e "[WARNING] Experimental-only for login device currently."

uid=$(curl -s w.seu.edu.cn | iconv -f gbk | grep "uid" | cut -f 4 -d ";" | grep -P '\d+' -o)
nid=$(curl -s w.seu.edu.cn | iconv -f gbk | grep "NID" | cut -f 1 -d ";" | cut -f 2 -d "=")
ip=$(curl -s w.seu.edu.cn | iconv -f gbk | grep "uid" | cut -f 1 -d "/" | grep -P '(\d+\.){3}\d+' -o)

echo -e "User ID: \t $uid"
echo -e "User Name: \t $nid"
echo -e "Login IP: \t $ip"