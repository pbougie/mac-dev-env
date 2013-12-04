Dotenv.load
I18n.enforce_available_locales = false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :directory_indexes
# Middleman-Livereload only works with "middleman server"; not with Pow
activate :livereload

ignore "/stylesheets/normalize.css"
ignore "/stylesheets/gh-fork-ribbon.css"
ignore "/stylesheets/icons.css"

configure :build do
  activate :minify_css
  activate :minify_javascript

  use Rack::GoogleAnalytics, :tracker => ENV['GOOGLE_ANALYTICS']
  use Rack::Gauges, :tracker => ENV['GAUGES']
end

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.user = ENV['RSYNC_USER']
  deploy.host = ENV['RSYNC_HOST']
  deploy.path = ENV['RSYNC_PATH']
  deploy.clean = true
end
