FROM tomcat:8.0-jre8
ADD sparkjava-hello-world/sparkjava-hello-world/1.0/sparkjava-hello-world-1.0.war /usr/local/tomcat/webapps/
RUN chgrp -R 0 /usr && chmod -R g=u /usr
EXPOSE 8080
CMD ["catalina.sh", "run"]
