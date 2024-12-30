#!/usr/bin/env bash
docker image rm ngovanhuy0241/k8s_container:node
docker build -t ngovanhuy0241/k8s_container:node --force-rm -f Dockerfile .