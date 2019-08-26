#!/bin/bash
set -ex

python3 -m venv certbot/venv
certbot/venv/bin/pip install -e certbot-ci
certbot/venv/bin/pytest certbot/certbot-ci/certbot_integration_tests --numprocesses 4 --acme-server=pebble 
