FROM rockplace/tomcat7-base:7.0.79

LABEL io.k8s.description="Tomcat7 S2I" \
      io.k8s.display-name="Tomcat7 S2I" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,tomcat7,tomcat7-s2i"

LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i

# copy assemble and run file
COPY files/s2i/ /usr/local/s2i

RUN chmod 775 /usr/local/s2i/* \
  && chmod -R 775 /usr/local/tomcat \
  && chown -R tomcat:root /usr/local/tomcat

#COPY simple.war /usr/local/tomcat/webapps/

EXPOSE 8080

USER 185

CMD ["catalina.sh", "run"]
