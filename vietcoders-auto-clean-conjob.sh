#!/bin/bash
# From VietCoders With Love
# Update Your OS
yum update -y;
# Check Cronjob Installed
rpm -q cronie;
# Install Cronjob
yum install cronie -y;
# Check Structure Conjob
cat /etc/crontab;
# Create Cronjob
touch /root/crontab && chmod 644 /root/crontab;
echo "* 1 * * * /usr/bin/find . -name '*.log' -mtime +7 -exec rm -f {} \;" >> /root/crontab;
# Restart Cronjob
systemctl restart crond.service;
echo ""
echo "     Đã Cài đặt / Thiết lập Cronjob thành công"
echo ""
echo "        From VietCoders Community With Love"
echo ""
