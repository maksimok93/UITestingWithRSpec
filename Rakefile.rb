require 'rubocop/rake_task'

desc 'Running tests'
task :rspec do
  sh 'bundle exec rspec spec'
end

desc 'Rubocop linting task'
task :rubocop do
  RuboCop::RakeTask.new
end

task jenkins: %w[rspec rubocop]
