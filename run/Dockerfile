FROM centos:7

MAINTAINER johnroot hnesd@qq.com
RUN yum -y update
RUN yum install -y gdb
RUN yum install -y lrzsz
RUN yum install -y net-tools
RUN mkdir  /opt/run

RUN echo "root:password" | chpasswd
WORKDIR /opt/run

CMD ulimit -c unlimited && chmod 777 run.sh && ./run.sh

