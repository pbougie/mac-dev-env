---
layout: false
---

xml.instruct!
xml.urlset 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.find_all{ |p|
    p.ext == '.html' &&
    !p.path.start_with?('archives') &&
    !p.path.start_with?('error') &&
    !p.path.start_with?('google')
  }.sort_by{ |p| p.url }.each do |page|
    xml.url do
      xml.loc "https://mac-dev-env.patrickbougie.com#{page.url}"
      xml.lastmod Time.new.utc.iso8601
      xml.changefreq page.data.changefreq || "daily"
      xml.priority page.data.priority || "0.9"
    end
  end
end
