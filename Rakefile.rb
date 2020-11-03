
desc 'Running tests'
task :rspec do
  sh 'bundle exec rake -f /Users/mbezr/RubymineProjects/RSpec_Home_Task/Rakefile.rb my_task:do_stuff'
end

desc 'Rubocop linting task'
task :rubocop do
  sh 'rubocop'
end

task jenkins: %w(rspec rubocop)
