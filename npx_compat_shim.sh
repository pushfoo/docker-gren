#!/bin/bash

# This adapter deals with two issues:
# * node uses npx for cli tools installed via npm (ty lydell)
# * we want bash array slicing, but don't want to force using
#   bash as the container's shell if people need another one

npx gren "${@:1}"
