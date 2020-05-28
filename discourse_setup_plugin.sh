#!/usr/bin/env bash

# Check if at least one plugin name has been passed
if [ $# -eq 0 ]; then
  echo "Usage: discourse_setup_plugin.sh plugin_name"
  exit 1
fi

## First, remove current non-core plugins.

discourse_remove_non_core_plugins.sh

## Then add the plugin(s).

for plugin in "$@"
do
  pluginDir=$DISCOURSE_DIR/plugins/$plugin
  if [ -d "$pluginDir" ]; then
    ln -s $pluginDir $DISCOURSE_DIR/discourse/plugins/$plugin
  fi
done
