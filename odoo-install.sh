apt-get update
apt-get upgrade -y
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/15.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update
apt-get install odoo nginx certbot python3-pip -y
