FROM centos:7
RUN yum -y update
RUN yum install -y gdb
RUN yum install -y lrzsz
RUN yum install -y net-tools
RUN mkdir  /opt/run
RUN cd  /opt/run

# passwords
RUN echo "root:password" | chpasswd

EXPOSE 22
CMD ulimit -c unlimited
CMD chmod 777 /opt/run/run.sh
CMD /opt/run/run.sh