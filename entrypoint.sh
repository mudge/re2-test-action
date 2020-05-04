#!/bin/bash
set -euo pipefail

wget -O libre2-dev.deb $2
dpkg -i libre2-dev.deb

apt-get install -yq --no-install-recommends ruby$1 ruby$1-dev
gem install bundler -v '~> 1.11'

bundle install --jobs=2 --retry=3 --deployment
bundle exec rake
