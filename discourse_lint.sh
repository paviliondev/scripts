#!/bin/bash
pnpm eslint --no-error-on-unmatched-pattern --fix {test,assets,admin/assets}/javascripts
pnpm prettier --write "{test,assets}/**/*.{scss,js,gjs,es6,hbs}"
pnpm ember-template-lint --no-error-on-unmatched-pattern assets/javascripts
bundle exec rubocop -A $(git ls-files '*.rb')
bundle exec stree write Gemfile $(git ls-files '*.rb') $(git ls-files '*.rake') $(git ls-files '*.thor')