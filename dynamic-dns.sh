#!/bin/bash
DOMAIN=""
PASSWORD=""
HOST="@"
IP="$(curl -s https://dynamicdns.park-your-domain.com/getip 2>/dev/null | grep --colour=never -E -o '(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)')"
if [ "$(echo $IP | wc -c)" -le "15" ] && [ "$(echo $IP | wc -c)" -ge "7" ]; then
        curl -s https://dynamicdns.park-your-domain.com/update\?host\="$HOST"\&domain\="$DOMAIN"\&password\="$PASSWORD"\&ip\="$IP" | grep --colour=never -v '<ErrCount>0</ErrCount>'
else
        echo "Non-parsable output, is your internet working?"
        exit
fi
