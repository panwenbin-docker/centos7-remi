FROM centos:7
RUN rpm -i https://mirrors.tuna.tsinghua.edu.cn/epel/epel-release-latest-7.noarch.rpm \
    && rpm -i https://mirrors.tuna.tsinghua.edu.cn/remi/enterprise/remi-release-7.rpm \
    && yum clean all \
    && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-*

