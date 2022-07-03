FROM ubuntu

RUN apt-get update

RUN apt-get install openjdk-8-jdk -y

RUN wget -y -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -

RUN sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' 

RUN apt-get update

RUN apt-get install jenkins

RUN apt install git

RUN systemctl start jenkins

