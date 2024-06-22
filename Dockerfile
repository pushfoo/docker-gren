# To build locally, do the following for a gren version:
# docker build --build-arg gren_version=0.3.0 -it pushfoo/gren:0.3.0dev1
# Note the dev{N} are used for previews at the moment.

FROM node

# We're going to pass the gren version in with this
ARG gren_version
RUN echo "Got gren_version=$gren_version"

# nodejs 15+ requires WORKDIR to be specified
# note: this command creates the directory if it doesn't exist
WORKDIR /usr/app

# Install the requirements
RUN npm install gren-lang@$gren_version

# Since aliases are nasty in docker, we instead put a script
# into PATH which runs "npx gren $REST_OF_THE_ARGS" for us.
COPY ./npx_compat_shim.sh /usr/bin/gren
RUN chmod +x /usr/bin/gren

# Cache the core gren libraries as a container layer
RUN gren

# Set the gren no args splash as the default command.
#
# To use this for a VCS-managed (git, etc) folder as a workspace, you *might*
# be able to use the command below to mount a src dir into the container:
#
# docker run -v src:src -it pushfoo/gren:latest bash
CMD [ "gren" ]
