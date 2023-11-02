FROM tomcat:latest
COPY target/my-maven-tom.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
