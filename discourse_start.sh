#!/usr/bin/env bash

if [ $# > 0 ]; then
  discourse_setup_plugin.sh "$@"
fi

cd $DISCOURSE_DIR
rm -rf tmp
DISCOURSE_DEV_ALLOW_ANON_TO_IMPERSONATE=1 RAILS_DEVELOPMENT_HOSTS=angus.ngrok.io ALLOW_EMBER_CLI_PROXY_BYPASS=1 bin/rails s
