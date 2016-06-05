Dotenv.load
I18n.enforce_available_locales = false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :layout, 'article_layout'

activate :directory_indexes
# Middleman-Livereload only works with "middleman server"; not with Pow
activate :livereload
activate :sprockets

ignore '/stylesheets/vendor/*'

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.deploy_method = :rsync
  deploy.user = ENV['RSYNC_USER']
  deploy.host = ENV['RSYNC_HOST']
  deploy.path = ENV['RSYNC_PATH']
  deploy.clean = true
end

helpers do
  def site_title
    'Compiling a Web Development Environment on Mac OS X'
  end

  def short_site_title
    'Mac Dev Env'
  end

  def site_desc
    'A guide for compiling a web development environment on OS X.'
  end

  def page_title(separator = '-')
    if current_resource.data.title.nil?
      site_title
    elsif separator == ':'
      short_site_title + ": #{current_resource.data.title}"
    else
      site_title.prepend("#{current_resource.data.title} #{separator} ")
    end
  end

  def page_desc
    if current_resource.data.title.nil?
      site_desc
    else
      site_desc.chomp('.') + ": #{current_resource.data.title}."
    end
  end

  def page_id
    current_page.path.split('.').first
  end
end
