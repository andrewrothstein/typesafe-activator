#
# Typesafe Activator Dockerfile
#
# https://github.com/andrewrothstein/docker-typesafe-activator.git
#
 
# Pull base image.
FROM dockerfile/java
 
# Install TypeSafe Activator v1.1.3
 
RUN cd /opt && wget http://downloads.typesafe.com/typesafe-activator/1.1.3/typesafe-activator-1.1.3.zip
RUN cd /opt && unzip typesafe-activator-1.1.3.zip
RUN ln -s /opt/activator-1.1.3 /opt/activator
RUn rm -f /opt/typesafe-activator-1.1.3.zip
 
# Expose ports.
EXPOSE 8888
 
# Define an entry point.
ENTRYPOINT ["/opt/activator/activator", "ui", "-Dhttp.address=0.0.0.0"]
