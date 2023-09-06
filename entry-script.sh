#!/bin/bash
sudo yum update -y && sudo yum install -y docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
sudo docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home --name my_jenkins_container jenkins/jenkins:lts

