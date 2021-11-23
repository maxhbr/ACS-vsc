#!/usr/bin/env bash

cp ../organization_2/bundle.tar .

docker build --tag organization4 -f Dockerfile  .
