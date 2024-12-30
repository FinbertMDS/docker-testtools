#!/usr/bin/env bash
docker image rm ngovanhuy0241/k8s_container:php
docker build -t ngovanhuy0241/k8s_container:php --force-rm -f Dockerfile .