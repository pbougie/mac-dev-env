require 'dotenv/tasks'

task :default => :build

desc "Build website"
task :build do
  puts '## Building website'
  system 'bundle exec middleman build'
end

desc "Watch website for changes"
task :guard do
  puts '## Watching website for changes'
  system 'bundle exec guard'
end

desc "Launch preview server at http://localhost:4567"
task :preview do
  puts '## Launching preview server at http://localhost:4567'
  exec 'bundle exec middleman server'
end
