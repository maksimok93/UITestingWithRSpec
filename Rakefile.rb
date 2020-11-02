require 'ci/reporter/rake/rspec'

# ...
# Rake code that creates a task called `:rspec`
# ...

task rspec: 'ci:setup:rspec'
