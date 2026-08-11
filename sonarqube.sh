#!/bin/bash
# To Download and install SonarQube

cd /opt/

sudo dnf install unzip -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.5.1.90531.zip
sudo unzip sonarqube-*.zip -d /opt/
sudo dnf install java-21-amazon-corretto -y

# To Create the sonar user, set ownership, and start it


sudo useradd sonar
sudo chown -R sonar:sonar /opt/sonarqube-10.5.1.90531
sudo chmod +x /opt/sonarqube-10.5.1.90531/bin/linux-x86-64/sonar.sh
su - sonar

# sh /opt/sonarqube-10.5.1.90531/bin/linux-x86-64/sonar.sh start
# sh /opt/sonarqube-10.5.1.90531/bin/linux-x86-64/sonar.sh status
