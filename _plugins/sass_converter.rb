# https://gist.github.com/960150
require 'sass'

module Jekyll
  class SassConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /scss/i
    end

    def output_ext(ext)
      ".css"
    end

    def convert(content)
      begin
        puts "Performing Sass Conversion."
        engine = Sass::Engine.new(content, :syntax => :scss, :load_paths => ["./css/"], :style => :compact)
        engine.render
      rescue StandardError => e
        puts "Sass Error: " + e.message
      end
    end
  end
end
