#!/usr/bin/env bash

set -euo pipefail

mkdir bundle
cp -r ../organization_1/pkg bundle/pkg
cp -r NodeJS_Source_Code/www bundle/www
cd bundle
tar -cf ../bundle.tar www/ pkg/
