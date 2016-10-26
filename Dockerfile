FROM centos:7
RUN rpm -i https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm \
    && rpm -i http://repo1.sea.innoscale.net/remi/enterprise/remi-release-7.rpm \
    && yum clean all \
    && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-*
