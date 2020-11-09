require 'rubocop/rake_task'
require 'ci/reporter/rake/rspec'

desc 'Running tests'


task :spec => 'ci:setup:rspec'
# task :rspec do
#   sh 'bundle exec rspec spec'
# end

desc 'Rubocop linting task'
task :rubocop do
  RuboCop::RakeTask.new
end

task jenkins: %w[rspec rubocop]
