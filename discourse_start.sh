#!/usr/bin/env bash

if [ $# > 0 ]; then
  discourse_setup_plugin.sh "$@"
fi

cd $DISCOURSE_DIR/discourse
rm -rf tmp
DISCOURSE_DEV_ALLOW_ANON_TO_IMPERSONATE=1 rails s

