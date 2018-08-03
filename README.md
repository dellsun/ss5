yum install -y yum-utils \
    device-mapper-persistent-data \
    lvm2

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce

yum list docker-ce --showduplicates | sort -r

systemctl start docker

docker run hello-world


docker run -d -p 24947:24947 centos:7

firewall-cmd --zone=public --add-port=24947/tcp --permanent
firewall-cmd --reload