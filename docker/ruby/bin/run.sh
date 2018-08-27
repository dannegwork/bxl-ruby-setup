#!/bin/bash

bundle pack
ruby bin/rails db:setup
ruby bin/rails log:clear tmp:clear
ruby bin/yarn

rails server

exec "$@"