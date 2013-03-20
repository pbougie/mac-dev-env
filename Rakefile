task :default => :preview

desc "Launch preview server at http://localhost:4567"
task :preview do
  exec("bundle exec middleman server")
end

desc "Build website for deployment"
task :build do
  puts "## Building website for deployment"
  exec("bundle exec middleman build --clean")
end

desc "Deploy website via rsync to production server"
task :deploy do
  puts "## Deploying website via rsync to production server"
  exec("chmod -R +r build/*")
  exec("bundle exec middleman deploy")
end

desc "Build and Deploy website to production server"
task :release => [:build, :deploy]
