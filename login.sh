#!/bin/bash
# define username and password
username="<username>"
password="<password>"

# get IP and send login GET with curl (ignore local and docker IP)
login_ip=$(ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v 172.17.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:")

echo "[LOGIN] $username from $login_ip"

login_url="https://w.seu.edu.cn:801/eportal/?c=Portal&a=login&callback=dr1003&login_method=1&user_account=%2C0%2C$username&user_password=$password&wlan_user_ip=$login_ip&wlan_user_ipv6=&wlan_user_mac=000000000000&wlan_ac_ip=&wlan_ac_name=jlh_me60&jsVersion=3.3.2&v=2505"

# echo "$login_url"

response=$(curl -s $login_url)

echo -e "$response"