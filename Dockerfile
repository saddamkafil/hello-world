FROM tomcat:latest

COPY /home/ec2-user/workspace/tatk1/webapp/target/webapp.war /usr/local/tomcat/webapps
