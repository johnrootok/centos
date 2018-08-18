FROM centos:7

MAINTAINER johnroot hnesd@qq.com
RUN yum -y update
RUN yum install -y gdb
RUN yum install -y lrzsz
RUN yum install -y net-tools
RUN mkdir  /opt/run
#RUN echo -e "kernel.core_pattern = core.%e.%p" >/etc/sysctl.conf
#RUN echo -e "kernel.core_uses_pid = 0" >/etc/sysctl.conf
# passwords
RUN echo "root:password" | chpasswd
WORKDIR /opt/run
EXPOSE 22

CMD ulimit -c unlimited && chmod 777 /opt/run/run.sh && /opt/run/run.sh

