#!/bin/bash
set -ex

python3 -m venv venv
venv/bin/python -m pip install -e certbot/certbot-ci
venv/bin/python -m pytest certbot/certbot-ci/certbot_integration_tests -n 4