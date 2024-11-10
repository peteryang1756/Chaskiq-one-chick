#!/bin/sh
curl --create-dirs -o $HOME/.postgresql/root.crt 'https://cockroachlabs.cloud/clusters/77ee71c1-bfad-475d-8d8d-b0aed4a1cb2a/cert'

set -e

bundle exec rails db:setup
bundle exec rails db:migrate
bundle exec rake admin_generator
bundle exec rails s -b 0.0.0.0 -p 3000
