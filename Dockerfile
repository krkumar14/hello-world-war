FROM tomcat:9.0.71-jdk11-corretto



COPY hello.war /usr/local/tomcat/webapps/

RUN mv webapps webapps2
RUN mv webapps.dist/ webapps
COPY hello.war /usr/local/tomcat/webapps/
RUN export PATH=$PATH:/usr/local/tomcat/bin
#RUN java --version
#RUN unzip /usr/local/tomcat/webapps/helloworld.war

RUN pwd
CMD [“catalina.sh”,“start”]
