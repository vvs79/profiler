#!/bin/bash
set -e

# rm /tmp/pids/server.pid
rake db:create
rake db:migrate
# rake db:migrate RAILS_ENV=test

exec "$@"
