FROM node

# nodejs 15+ requires WORKDIR to be specified
# note: this command creates the directory if it doesn't exist
WORKDIR /usr/app

# Install the requirements 
RUN npm install gren-lang@0.3.0


# Since aliases are nasty in docker, we instead put a script
# into PATH which runs "npx gren $REST_OF_THE_ARGS" for us.
COPY ./npx_compat_shim.sh /usr/bin/gren
RUN chmod +x /usr/bin/gren

# Cache the core gren libraries as a container layer
RUN gren

# Set the REPL as the default command.
# To use this for a VCS-managed (git, etc) folder you might be able
# to use the following command to mount the src dir into the container:
#
# docker run -v src:src -it pushfoo/gren:0.3.0 bash
CMD [ "gren" ]
