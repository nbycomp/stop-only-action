#!/bin/sh

: "${GITHUB_WORKSPACE?GITHUB_WORKSPACE has to be set. Did you use the actions/checkout action?}"

cd /opt/stop-only
npm test
