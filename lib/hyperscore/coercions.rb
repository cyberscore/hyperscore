require 'virtus'
require 'uri'

module Hyperscore::Coercions
  
  class News
    include Virtus
    
    attribute :id,       Integer
    attribute :headline, String
    attribute :date,     Date
    attribute :source,   String
  end
  
end