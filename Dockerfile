FROM tomcat:11-jdk17

# Borra aplicaciones por defecto
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia tu war
COPY WebFrontModern.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080