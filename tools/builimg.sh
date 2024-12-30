#!/usr/bin/env bash
docker image rm ngovanhuy0241/tools:latest
docker build -t ngovanhuy0241/tools:latest --force-rm -f Dockerfile .