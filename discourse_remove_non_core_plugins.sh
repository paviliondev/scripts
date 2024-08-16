#!/usr/bin/env bash

declare -a corePlugins=(
  "automation"
  "chat"
  "discourse-details"
  "discourse-internet-explorer"
  "discourse-local-dates"
  "discourse-narrative-bot"
  "discourse-presence"
  "discourse-unsupported-browser"
  "lazy-yt"
  "poll"
  "styleguide"
  "checklist"
  "discourse-lazy-videos"
  "footnote"
  "spoiler-alert"
)

for d in $DISCOURSE_DIR/plugins/*/; do
  name="$(basename $d)"

  if [[ ! "${corePlugins[@]}" =~ "${name}" ]]; then
    unlink ${d%/}
  fi
done
