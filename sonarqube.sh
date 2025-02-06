#For sonar qube installation we will us docker container.
#from docker hub we will pull the image into container.
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
