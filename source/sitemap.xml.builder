---
layout: false
---

xml.instruct!
xml.urlset 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.select { |page| page.path =~ /\.html/ }.each do |page|
    xml.url do
      pathname = File.basename(page.path, ".html")
      pathname = nil if pathname === "index"
      xml.loc "http://mac-dev-env.patrickbougie.com/#{pathname}"
      xml.lastmod Time.new.utc.iso8601
      xml.changefreq page.data.changefreq || "weekly"
      xml.priority page.data.priority || "0.5"
    end
  end
end
