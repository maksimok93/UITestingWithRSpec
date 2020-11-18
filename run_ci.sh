#!/bin/sh
#!/bin/env ruby
# encoding: utf-8
export PATH=/usr/local/opt/ruby/bin:$PATH
bundle exec rspec --format progress --format RspecJunitFormatter --out results.xml