#!/usr/bin/env ruby

require 'open-uri'


urls = File.write('urls.txt', "https://i.postimg.cc/tn7hL1pC/jaz.jpg, https://i.postimg.cc/Z0qF9Qpt/kuruz.jpg, https://i.postimg.cc/62MrjVsm/vrh3.jpg")

def download_image(url, dest)
  open(url) do |u|
    File.open(dest, 'wb') { |f| f.write(u.read) }
  end
end

urls.each { |url| download_image(url, url.split('/').last) }
