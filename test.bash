#!/bin/bash

set -ex

apt-get -y install python3 python3-venv nginx

cd parts/certbot/src

python3 -m venv venv
. ./venv/bin/activate
tools/pip_install_editable.py certbot-ci
pytest certbot-ci/certbot_integration_tests

echo "Success!"
