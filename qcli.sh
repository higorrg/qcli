#!/usr/bin/env bash

set -euo pipefail

if [[ "$@" == "" ]]; then
  echo "Options:"
  echo "  create"
  echo "  list-extensions"
  echo "  add-extensions {comma sep extensions}"
  exit 0;
fi

if [[ "$1" == "create" ]]; then
    echo "Creating new project"
    mvn io.quarkus:quarkus-maven-plugin:1.11.2.Final:create
elif [[ "$1" == "list-extensions" ]]; then
    echo "Listing Extensions"
    mvn quarkus:list-extensions
elif [[ "$1" == "add-extensions" ]]; then
    echo "Adding Extension $2"
    mvn quarkus:add-extension -Dextensions="$2"
fi
