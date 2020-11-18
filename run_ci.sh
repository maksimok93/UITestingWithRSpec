#!/bin/sh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/opt/ruby/bin:$PATH
bundle exec rspec --format RspecJunitFormatter --out results.xml