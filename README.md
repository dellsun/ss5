yum update -y
yum install -y docker

systemctl start docker

docker run -d -p 0.0.0.0:46435:24947 dellsun/ss5
