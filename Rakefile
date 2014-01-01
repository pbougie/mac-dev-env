task :default => :preview

desc "Launch preview server at http://localhost:4567"
task :preview do
  exec("bundle exec middleman server")
end

desc "Build website for deployment"
task :build do
  puts "## Building website for deployment"
  system("bundle exec middleman build")
end

desc "Deploy website via rsync to production server"
task :deploy do
  puts '## Updating file permissions before uploading'
  system 'chmod -R u+rwX,go=u-w build'
  puts "## Deploying website via rsync to production server"
  system("bundle exec middleman deploy")
end

desc "Build and Deploy website to production server"
task :release => [:build, :deploy]
