#!/bin/sh

sudo yum install java-1.8.0-openjdk.x86_64 -y 

java -version
yum install tomcat8 tomcat8-webapps 

sudo service tomcat8 start