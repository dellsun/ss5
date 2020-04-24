yum update -y
yum install -y docker

systemctl start docker

docker run -d -p 24947:24947 dellsun/ss5
