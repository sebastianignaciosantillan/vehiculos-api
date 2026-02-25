FROM tomcat:10.1.23-jre21
MAINTAINER admin_sucursal
EXPOSE 9090
RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
COPY target/vehiculosBuild.war /usr/local/tomcat/webapps/vehiculosBuild.war