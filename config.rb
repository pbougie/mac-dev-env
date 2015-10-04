Dotenv.load
I18n.enforce_available_locales = false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :directory_indexes
# Middleman-Livereload only works with "middleman server"; not with Pow
activate :livereload

ignore '/stylesheets/vendor/*'

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.user = ENV['RSYNC_USER']
  deploy.host = ENV['RSYNC_HOST']
  deploy.path = ENV['RSYNC_PATH']
  deploy.clean = true
end

page '/' do
  @message = nil
end

helpers do
  def page_id
    current_page.path.split('.').first
  end
end
