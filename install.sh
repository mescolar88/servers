#!/bin/bash

cd /usr
wget http://archive.apache.org/dist/tomcat/tomcat-5/v5.0.28/bin/jakarta-tomcat-5.0.28.tar.gz
tar -zxf jakarta-tomcat-5.0.28.tar.gz
mv jakarta-tomcat-5.0.28 tomcat

cd /root
wget http://dev.mysql.com/get/mysql57-community-release-el6-8.noarch.rpm
sudo rpm -Uvh mysql57-community-release-el6-8.noarch.rpm
yum-config-manager --disable mysql57-community
yum-config-manager --enable mysql55-community
sudo yum install -y mysql-community-server

sudo service mysqld start
sudo service mysqld status
sudo service mysqld enable
#cat /var/log/mysqld.log | grep "temporary password"


wget http://prdownloads.sourceforge.net/webadmin/webmin-1.840-1.noarch.rpm
sudo yum install -y webmin-1.840-1.noarch.rpm

wget https://download.teamviewer.com/download/teamviewer.i686.rpm
sudo yum install -y teamviewer.i686.rpm

mysql_secure_installation