#!/bin/sh


echo "Installing Jenkins"
sudo yum install java-1.8.0-openjdk-devel -y 
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo service jenkins start
sudo chkconfig --add jenkins

#netstat -na |grep LISTEN |grep 80
echo sudo cat /var/lib/jenkins/secrets/initialAdminPassword

jenkins -version

echo "Installing Ansible"
sudo yum install ansible
ansible -version
echo "Done"