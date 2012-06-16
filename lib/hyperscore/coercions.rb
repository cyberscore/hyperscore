require 'virtus'

module Hyperscore::Coercions
  
  class News
    include Virtus
    
    attribute :id,       Integer
    attribute :headline, String
    attribute :date,     Date
  end
  
end