require 'open-uri'

urls = open('https://github.com/mperaic/image_fetcher/blob/master/urls.txt').readlines
def download_image(url, dest)
  open(url) do |u|
    File.open(dest, 'wb') { |f| f.write(u.read) }
  end
end


urls = File.read('urls.txt')

urls.each do 
  { |url| download_image(url, url.split('/').last) }
end