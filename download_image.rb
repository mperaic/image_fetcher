#!/usr/lib/ruby
require 'open-uri'

def download_image(url, dest)
  open(url) do |u|
    File.open(dest, 'wb') { |f| f.write(u.read) }
  end
end


urls = File.read("urls.txt").split /[\r\n]+/

urls.each { |url| download_image(url, url.split('/').last) }
  


