#!/bin/bash

bundle install
bundle pack --all
ruby bin/rails db:setup
ruby bin/rails log:clear tmp:clear

bundle install

ruby bin/rails server

exec "$@"