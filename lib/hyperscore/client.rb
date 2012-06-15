module Hyperscore
  
  class Client
    include Hyperclient
  
    # entry_point 'http://cs-api.heroku.com/api/'
    entry_point 'http://cyberscore.dev/api'
  
    def news
      links.news.resources.news
    end
  
    def submissions
      links.submissions.resources.submissions
    end
  
    def games
      links.games.resources.games
    end
  
    def add_game(name)
      links.feeds.links.submissions.post({name: name})
    end
  
    def motd
      attributes['motd']
    end
  end
  
end