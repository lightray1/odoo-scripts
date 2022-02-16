#!/bin/bash -
hostname=$(hostnamectl --static)
timestamp=$(date '+%s')
mega-login username@gmail.com password
pg_dump odoo > "$hostname"_"$timestamp"_dump.sql
zip --password yourpw -9 "$hostname"_"$timestamp"_dump.zip "$hostname"_"$timestamp"_dump.sql
mega-put -c "$hostname"_"$timestamp"_dump.zip /"$hostname"/
rm "$hostname"_"$timestamp"_dump.*
