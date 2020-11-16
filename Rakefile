require 'dotenv/tasks'

task :default => :build

desc "Build website"
task :build do
  puts '## Building website'
  system 'bundle exec middleman build'
end

desc "Deploy website to AWS"
task :deploy do
  puts '## Deploying website to AWS S3'
  system "aws s3 sync build/ s3://mac-dev-env.patrickbougie.com --delete --exclude '*.DS_Store*'"
  puts '## Invalidating objects from AWS CloudFront edge caches'
  system "aws cloudfront create-invalidation --distribution-id E32XIM7EFUQNFX --paths '/*'"
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
