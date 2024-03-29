require 'hyperclient'

require_relative 'coercions'

module Hyperscore
  
  class Client
    include Hyperclient
    
    http_options :headers => { "Accept-Encoding" => "gzip,deflate" }
    entry_point 'http://cs-api.heroku.com/api/'
    
    def initialize(url=nil)
      url and self.class.entry_point url
    end
    
    def news
      links.news.resources.news.map do |news|
        Hyperscore::Coercions::News.new( news.attributes.merge({
          :source => news.url
        }) )
      end
    end
  
    def submissions
      links.submissions.resources.submissions
    end
  
    def games
      links.games.resources.games
    end
  
    def motd
      attributes['motd']
    end
  end
  
end