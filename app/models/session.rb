require 'httparty'

class Session
  include HTTParty
  format :xml
  
  def self.endpoint
    "http://www.codemash.org/rest/sessions"
  end
  
  def self.all
    self.class.get(self.endpoint)["Sessions"]["Session"]
  end
end
