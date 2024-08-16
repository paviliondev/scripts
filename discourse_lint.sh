#!/bin/bash
yarn eslint --ext .js,.gjs,.js.es6 --no-error-on-unmatched-pattern --fix {test,assets,admin/assets}/javascripts
yarn prettier --write "{test,assets}/**/*.{scss,js,gjs,es6,hbs}"
yarn ember-template-lint --no-error-on-unmatched-pattern assets/javascripts
bundle exec rubocop -A .
bundle exec stree write Gemfile $(git ls-files '*.rb') $(git ls-files '*.rake') $(git ls-files '*.thor')