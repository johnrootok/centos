FROM centos:7

RUN yum -y update

RUN yum -y install passwd openssl openssh-server  openssh-clients

RUN yum install -y gdb

RUN yum install -y lrzsz

RUN yum install -y net-tools

RUN mkdir  /var/run/sshd/



# start sshd to generate host keys, patch sshd_config and enable yum repos
RUN sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key

RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key

RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key

##########################################################################
# passwords
RUN echo "root:john@@root" | chpasswd

EXPOSE 22
CMD service crond start; /usr/sbin/sshd -D