#!/usr/bin/env bash
docker image rm ngovanhuy0241/coretools
docker build -t ngovanhuy0241/coretools:latest --force-rm -f Dockerfile .