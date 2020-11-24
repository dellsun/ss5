yum update -y
yum install -y docker

systemctl start docker

docker run -d -p 0.0.0.0:46435:24947 dellsun/ss5

sysctl net.ipv6.conf.all.disable_ipv6=1
sysctl net.ipv6.conf.default.disable_ipv6 = 1

firewall-cmd --add-port=46435/tcp --permanent
firewall-cmd --reload

firewall-cmd --permanent --zone=trusted --change-interface=docker0
firewall-cmd --reload