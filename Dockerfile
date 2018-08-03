FROM centos:7

RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install --upgrade pip
RUN pip install shadowsocks

RUN ADD shadowsocks.json /etc/

ENV TZ Asia/Shanghai
EXPOSE 24947

ENTRYPOINT ssserver -c /etc/shadowsocks.json -d start

