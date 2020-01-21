#!/usr/bin/env bash

## Setup a Discourse plugin(s).

## Usage
# <path-to-script>/setup_discourse_plugin.sh <plugin-name> <plugin-name> ...
##

## This script assumes
# The following scripts are in the same directory and are executable:
# - remove_non_core_plugins.sh
#
# The folder assigned to discourseRoot contains:
# - The discourse repo in folder called 'discourse'
# - A folder called 'plugins' containing the plugin to be setup
#
# See included scripts for further assumptions
##

scriptRoot=${0%/*}
discourseRoot=~/discourse

# Check if at least one plugin name has been passed
if [ $# -eq 0 ]; then
  echo "Usage: ./setup_discourse_plugin plugin_name"
  exit 1
fi

## First, remove current non-core plugins.

$scriptRoot/remove_non_core_plugins.sh

## Then add the plugin(s).

for plugin in "$@"
do
  ln -s $discourseRoot/plugins/$plugin $discourseRoot/discourse/plugins/$plugin
done
