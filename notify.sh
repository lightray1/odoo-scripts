#create a crontab i.e. */5 * * * * /root/notify.sh odoo.service
#!/bin/bash -

hostname=$(hostnamectl --static)
status=$(systemctl is-active $1)
if [ "$status" != "active" ]
then
	echo "[$hostname] $1: $status" | pb push
fi
