#!/bin/sh
export PATH=/usr/local/opt/ruby/bin:$PATH
# touch *.xml
# bundle exec rspec
bundle exec rspec --format RspecJunitFormatter --out results.xml
