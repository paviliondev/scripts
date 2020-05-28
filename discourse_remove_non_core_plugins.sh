#!/usr/bin/env bash

declare -a corePlugins=(
  "discourse-details"
  "discourse-internet-explorer"
  "discourse-local-dates"
  "discourse-narrative-bot"
  "discourse-presence"
  "discourse-unsupported-browser"
  "lazy-yt"
  "poll"
)

for d in $DISCOURSE_DIR/discourse/plugins/*/; do
  name="$(basename $d)"

  if [[ ! "${corePlugins[@]}" =~ "${name}" ]]; then
    unlink ${d%/}
  fi
done
