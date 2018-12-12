FROM centos:7
RUN yum install https://mirrors.tuna.tsinghua.edu.cn/remi/enterprise/remi-release-7.rpm \
    && yum clean all \
    && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-*

