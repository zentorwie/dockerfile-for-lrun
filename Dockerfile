FROM centos:7

RUN curl http://mirrors.163.com/.help/CentOS7-Base-163.repo >/etc/yum.repos.d/CentOS-Base.repo
RUN yum update -y
RUN yum install -y gcc gcc-c++ java-1.8.0-openjdk-devel
RUN yum install -y git libseccomp-devel rake make sudo
RUN touch /usr/include/stropts.h \
 && cd /root \
 && git clone https://github.com/quark-zju/lrun.git \
 && cd lrun \
 && make install \
 && useradd judge \
 && gpasswd -a judge lrun