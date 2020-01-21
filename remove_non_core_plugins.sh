#!/usr/bin/env bash

## This script assumes:
#
# The folder assigned to discourseRoot contains:
# - The discourse repo in folder called 'discourse'
##

discourseRoot=~/discourse

declare -a corePlugins=(
  "discourse-details"
  "discourse-internet-explorer"
  "discourse-local-dates"
  "discourse-narrative-bot"
  "discourse-presence"
  "lazy-yt"
  "poll"
)

for d in $discourseRoot/discourse/plugins/*/; do
  name="$(basename $d)"

  if [[ ! "${corePlugins[@]}" =~ "${name}" ]]; then
    unlink ${d%/}
  fi
done
