#!/bin/bash
set -euo pipefail

ruby_version=$1
libre2_url=$2

# Install libre2-dev
wget -O libre2-dev.deb "$libre2_url"
dpkg -i libre2-dev.deb

# Install Ruby or Rubinius
case "${ruby_version:0:3}" in
  rub)
    apt-get install -yq --no-install-recommends "$ruby_version" "${ruby_version}-dev"
    ;;
  rbx)
    version=${ruby_version:3}
    apt-get install -yq --no-install-recommends zlib1g-dev libyaml-dev libssl-dev libgdbm-dev libreadline-dev libncurses5-dev
    wget -O rubinius.tar.bz2 "https://rubinius-binaries-rubinius-com.s3-us-west-2.amazonaws.com/ubuntu/14.04/x86_64/rubinius-${version}.tar.bz2"
    tar xvf rubinius.tar.bz2 -C /opt
    export PATH=/opt/rubinius/${version}/bin:/opt/rubinius/${version}/gems/bin:$PATH
    ;;
  *)
    echo "Unknown Ruby specified: ${ruby_version}"
    exit 1
    ;;
esac

# Install dependencies for tests
gem install bundler -v '~> 1.11'
bundle install --jobs=2 --retry=3 --deployment

# Run tests
bundle exec rake
