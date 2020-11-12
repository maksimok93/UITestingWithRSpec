require 'ci/reporter/rake/rspec'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |test|
  test.rspec_opts = '--format documentation'
  test.pattern = 'spec/features/*_spec.rb'
end

task default: :spec

desc 'Running tests'
task :rspec do
  sh 'bundle exec rspec spec'
end

desc 'Rubocop linting task'
task :rubocop do
  RuboCop::RakeTask.new
end

task jenkins: %w[rspec rubocop]
