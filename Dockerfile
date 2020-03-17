FROM tomcat:jdk11-adoptopenjdk-openj9

COPY web-app/target/web-app.war /usr/local/tomcat/webapps/ROOT.war

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN groupadd -r tomcat && useradd -r -g tomcat tomcat

USER tomcat
