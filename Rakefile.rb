
desc 'Running tests'
task :rspec do
  sh 'bundle exec rspec spec'
end

desc 'Rubocop linting task'
task :rubocop do
  sh 'rubocop'
end

task jenkins: %w(rspec rubocop)
