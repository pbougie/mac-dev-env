task :default => :build

desc "Build website"
task :build do
  puts '## Building website'
  system 'bundle exec middleman build'
end

desc "Deploy website to production"
task :deploy do
  puts '## Updating file permissions before uploading'
  system 'chmod -R u+rwX,go=u-w build'
  puts '## Deploying website'
  system "find build -name .DS_Store -exec rm -f '{}' ';'"
  system 'bundle exec middleman deploy'
end

desc "Rebuild website on filesystem changes"
task :guard do
  puts '## Rebuilding website because changes to the filesystem detected'
  system 'bundle exec guard'
end

desc "Launch preview server at http://localhost:4567"
task :preview do
  puts '## Launching preview server at http://localhost:4567'
  exec("bundle exec middleman server")
end
