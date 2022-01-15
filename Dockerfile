FROM  alekcz/pcp:latest

# In scrict mode (default) the path must start with INSTALL_ROOT which is /var/pcp by default
# when strict mode is off the path is set by http header in the request
# ENV STRICT 0 

# All sites served by pcp must be children of the INSTALL_ROOT in strict mode. 
# ENV INSTALL_ROOT /var/pcp

# The server root the server entry point. 
# Navigating to / in a browser resolves to $SERVER_ROOT/index.clj
# When strict mode is off the server root is specified using the 'document-root' http header
# ENV SERVER_ROOT default/public

WORKDIR /var/pcp
COPY . /var/pcp

# building the image
# docker build -t pcp-template:v0.0.3-alpha.2 .

# running the image
# docker run -p $PORT:$PORT -e PORT=$PORT pcp-template:v0.0.3-alpha.2