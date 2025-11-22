#!/usr/bin/env bash
# Load default environment variables

source .env
cat template/traefik.yml.tmpl | envsubst > traefik/traefik.yml
#cat template/traefik-pipedpiper.yml.tmpl | envsubst > traefik/traefik-pipedpiper.yml
