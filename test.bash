#!/bin/bash
set -ex

git clone https://github.com/certbot/certbot.git --single-branch --depth=1
cd certbot
./certbot-auto -n --os-packages-only

python3 -m venv venv
. venv/bin/activate

./tools/pip_install_editable.py certbot-ci

pytest certbot-ci/certbot_integration_tests -numprocesses 4 --acme-server=pebble 
