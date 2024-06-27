#!/bin/bash

Usage() {
cat <<EOF

$0 [ --force ] release_name
Build and publish a Docker image for a specified Gren release.

In addition to a release_name or "latest", authentication to Dockerhub
must be provided through the local environment in one of two ways:


Auth:
    Local users    : docker login

        You can either run it beforehand or as part of the first run of
        of the script locally.

    GitHub Actions : set DOCKERHUB_API_KEY

        Set the DOCKERHUB_API_KEY environment variable using the env section
        of the GitHub action YAML file:

          env:
            DOCKERHUB_GITHUB_TOKEN: \${{ secrets.dockerhub_github_token }}

        As a desktop user, try to use docker login instead of this with a
        credential store, docker desktop, or anything other than slinging
        environment variables around.


Arguments & Flags:

    release_name

      release_name == 'latest'
        Fetch the latest release name from the GitHub API.

        If a latest release name cannot be fetched, the script exits with an
        error and non-zero exit code.

      release_name != 'latest'
        Use the specific value of a release name.

        This can cause an error and non-zero exit under the following conditions:

        1. The specified release does not exist on GitHub

        2. The GitHub API has rate limited you or is failing

        3. The specified release_name already has a tag on GitHub and you have
           not used the --force-push flag.

    --force-push

        If a tag already exists for a release name, overwrite it without an error.

        This is reserved for fixing botched releases should they occur.

EOF
}

GH_RESPONSE='cached_latest_release.json'

do_build() {
    echo $GH_RESPONSE
    local raw_data=`cat $GH_RESPONSE |  jq '.name, .published_at' | xargs -n 2`
    local latest_release=
}


publish_to_dockerhub() {
    if [ -z ${CI+x} ] || [ -z ${GITHUB_RUN_ID+x} ]; then
        if [ ! -z ${DOCEKRHUB_GITHUB_TOKEN+x} ]; then
            echo "Don't throw en
        fi
        echo "Current environment does not eapp
    fi
    docker login --user pushfoo

}


do_build



