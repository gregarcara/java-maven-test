FROM tomcat:8.0.20-jre8
COPY ./ /src
WORKDIR /src
RUN mkdir /usr/local/tomcat/webapps/myapp
RUN mvn clean package 
COPY /src/target/hello-java-1.0.war /usr/local/tomcat/webapps/hello-java.war
