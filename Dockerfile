FROM tomcat:8.0-alpine

LABEL maintainer="abprakash405@gmail.com"

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

ADD target/asn-war-example-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]