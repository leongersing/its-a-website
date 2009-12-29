require 'httparty'

class Session
  include HTTParty
  format :xml
  
  def self.endpoint
    "http://www.codemash.org/rest/speakers"
  end
end