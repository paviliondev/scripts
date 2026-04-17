#!/bin/bash
pnpm eslint --no-error-on-unmatched-pattern --fix {test,javascrips}
pnpm prettier --write "{test,javascripts}/**/*.{scss,js,gjs,es6,hbs}"
pnpm ember-template-lint --no-error-on-unmatched-pattern javascripts
