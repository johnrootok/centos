FROM centos:7

MAINTAINER johnroot hnesd@qq.com
RUN yum -y update
RUN yum install -y gdb
RUN yum install -y lrzsz
RUN yum install -y net-tools
RUN mkdir  /opt/run

RUN echo "root:password" | chpasswd
WORKDIR /opt/run
EXPOSE 22

CMD ulimit -c unlimited && mv core core_`date "+%Y-%m-%d~%H-%M-%S"` && chmod 777 run.sh && ./run.sh

