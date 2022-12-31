#!/bin/bash
json="$(curl -s https://am.i.mullvad.net/json)"

connection=$(echo $json | jq .mullvad_exit_ip)

"$connection" = true \
&& (
hostname=$(echo $json | jq .mullvad_exit_ip_hostname)
ip=$(echo $json | jq .ip)
echo '{"text":'$hostname', "class":"connected", "percentage":0, "alt":'$ip'}') \
|| echo '{"text":"Disconnected", "class":"disconnected", "percentage":100, "alt": "(No IP)"}'
