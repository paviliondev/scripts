#!/bin/bash
set -e

dropdb --if-exists discourse_development
dropdb --if-exists discourse_test
dropdb --if-exists discourse_test_multisite

createdb discourse_development
createdb discourse_test
createdb discourse_test_multisite

redis-cli flushall

bundle exec rake db:migrate
RAILS_ENV=test bundle exec rake db:migrate
