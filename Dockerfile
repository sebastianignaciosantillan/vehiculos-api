FROM tomcat:10.1.23-jre21
MAINTAINER admin_sucursal
EXPOSE 9090
COPY target/vehiculosBuild.war /usr/local/tomcat/webapps/vehiculosBuild.war