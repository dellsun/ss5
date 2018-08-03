FROM centos:7

RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install --upgrade pip
RUN pip install shadowsocks

RUN (cat <<EOF | tee /etc/shadowsocks.json >> /dev/null
{
    "server":"0.0.0.0",
    "server_port":24947,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"qaz!@#poiuy&UJM",
    "timeout":600,
    "method":"aes-256-cfb",
    "fast_open": false
}
EOF)

ENV TZ Asia/Shanghai
EXPOSE 24947

ENTRYPOINT ssserver -c /etc/shadowsocks.json -d start

