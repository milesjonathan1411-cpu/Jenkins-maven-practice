# To install git, maven, maven dependencies, and tree
sudo dnf install git maven java-21-amazon-corretto tree -y




# To install jenkins repo, Jenkins, and reload daemon
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/rpm-stable/jenkins.repo
sudo yum upgrade



# Add required dependencies for the jenkins package
sudo yum install fontconfig java-21-openjdk -y
sudo yum install jenkins -y
sudo systemctl daemon-reload




# To check jenkins status, enable jenkins, and start jenkins
sudo systemctl status jenkins.service
sudo systemctl enable jenkins.service
sudo systemctl status jenkins.service
sudo systemctl start jenkins.service
