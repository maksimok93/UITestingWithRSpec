#!/bin/sh
export PATH=/usr/local/opt/ruby/bin:$PATH
bundle exec rspec --format RspecJunitFormatter --out results.xml