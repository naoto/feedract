require "feedract/version"

module Feedract

  require 'nokogiri'
  require 'open-uri'


  def self.load(url_string)
    feed = []
    url = URI(url_string)
    Nokogiri::HTML(open(url).read).css("link").each do |link|
      if link["type"] == 'application/rss+xml' && link['rel'] == 'alternate'
        feed << (url + link['href']).to_s
      elsif link["type"] == 'application/atom+xml' && link['rel'] == 'alternate'
        feed << (url + link['href']).to_s
      end
    end
    feed
  end

end
