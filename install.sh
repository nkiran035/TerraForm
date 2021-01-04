#!/bin/sh


echo "Installing Jenkins"
echo "Installing Jenkins Kiran"
sudo yum remove java -y
sudo yum install java-1.8.0-openjdk-devel -y 
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo service jenkins start
sudo chkconfig --add jenkins
#netstat -na |grep LISTEN |grep 80
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

jenkins -version

sudo yum install git -y
#Git location-/usr/bin/git

#wget http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
#tar xvf apache-maven-3.0.5-bin.tar.gz
#sudo mv apache-maven-3.0.5  /usr/local/apache-maven
#export M2_HOME=/usr/local/apache-maven
#export M2=$M2_HOME/bin 
#export PATH=$M2:$PATH



echo "Installing Ansible"
sudo yum-config-manager --enable epel

sudo yum install ansible -y
ansible -version
echo "Done"


# guide https://gist.github.com/netpoetica/5879685

#install nginx 
sudo yum install nginx -yum

#Place conf file under /etc/nginx/conf.d
#validate nginx
#sudo nginx -t

#restart nginx
#sudo /etc/init.d/nginx restart
