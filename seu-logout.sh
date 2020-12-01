#!/bin/bash

# get IP and send logout GET with curl (ignore local and docker IP)
logout_ip=$(hostname -I | cut -f 1 -d ' ')
echo "[Logout] from $logout_ip"

logout_url="https://w.seu.edu.cn:801/eportal/?c=Portal&a=logout&callback=dr1004&login_method=1&user_account=drcom&user_password=123&ac_logout=1&register_mode=1&wlan_user_ip=$logout_ip&wlan_user_ipv6=&wlan_vlan_id=1&wlan_user_mac=&wlan_ac_ip=&wlan_ac_name=&jsVersion=3.3.2&v=9221"

response=$(curl -s $logout_url)
echo -e "[Response] $response"