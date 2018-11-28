#!/bin/sh

echo "Installing Tomcat"
sudo yum remove java -y
sudo yum install java-1.8.0-openjdk.x86_64 -y 

java -version
sudo yum install tomcat8 tomcat8-webapps -y

sudo service tomcat8 start