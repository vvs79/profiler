#!/bin/sh
set -ex

# run guard with livereload in background
# bin/bundle exec guard -i &

# del pid
#

# create db
# rake db:create
# rake db:migrate

# start the server
bin/rails server -b 0.0.0.0
