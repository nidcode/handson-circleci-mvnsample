FROM tomcat:alpine

COPY web-app/target/web-app.war /usr/local/tomcat/webapps/ROOT.war

RUN rm -rf /usr/local/tomcat/webapps/ROOT