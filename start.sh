#!/bin/sh
curl -o /usr/local/share/ca-certificates/ca.pem https://raw.githubusercontent.com/peteryang1756/Chaskiq-one-chick/refs/heads/main/ca.pem

# 更新 CA 憑證
update-ca-certificates

set -e

bundle exec rails db:setup
bundle exec rails db:migrate
bundle exec rake admin_generator
bundle exec rails s -b 0.0.0.0 -p 3000
