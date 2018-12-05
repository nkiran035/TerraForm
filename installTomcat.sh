#!/bin/sh

echo "Installing Tomcat"
sudo yum remove java -y
sudo yum install java-1.8.0-openjdk.x86_64 -y 

java -version
#sudo yum install tomcat8 tomcat8-webapps -y

#sudo service tomcat8 start

cd /usr/local
sudo  wget http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz
sudo tar -xvf apache-tomcat-9.0.12.tar.gz
sudo mv apache-tomcat-9.0.12 tomcat9
echo "export CATALINA_HOME="/usr/local/tomcat9"" >> ~/.bashrc
source ~/.bashrc

sudo /usr/local/tomcat9/bin/startup.sh 
#https://www.cloudar.be/ansible-tomcat-installation-war-deploy/