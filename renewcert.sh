#Set cron task i.e. 0 4 * * 7 /root/renewcert.sh
systemctl stop nginx.service
certbot renew
systemctl restart nginx.service
