Dotenv.load
I18n.enforce_available_locales = false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :layout, 'article_layout'

activate :directory_indexes
activate :sprockets

page '/archives/*', directory_index: false
page '/google386369349e5ac941.html', directory_index: false

configure :build do
  activate :minify_css
  activate :minify_javascript
end

after_build do |builder|
  `/usr/bin/afplay /System/Library/Sounds/Tink.aiff`
end

helpers do
  def site_title
    'Compiling a Web Development Environment on macOS'
  end

  def short_site_title
    'Mac Dev Env'
  end

  def site_desc
    'A guide for compiling a web development environment on macOS.'
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
