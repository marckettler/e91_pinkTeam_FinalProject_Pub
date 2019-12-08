# pull public Apache/httpd image (https://hub.docker.com/_/centos)
FROM    httpd:2.4

# Informs Docker that the container listens on the specified network ports
# Though does not actually publish the port. 
# It functions as a type of documentation between the person who builds the image 
# and the person who runs the container, about which ports are intended to be published
EXPOSE  80

# Copy public-html folder containing index.html and img/mrpink.gif from the host to 
# /usr/local/apache2/htdocs/ on the container.
COPY    ./public-html/ /usr/local/apache2/htdocs/

# If everything went fine then docker
# will package the container as a new image 
# and then stop and remove the container, so
# docker images
# should contain the new image

#Please read : https://docs.docker.com/engine/reference/builder/
