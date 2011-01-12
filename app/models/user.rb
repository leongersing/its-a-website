class User < ActiveRecord::Base
  has_many :authorizations
  has_many :presentation_questions
  has_and_belongs_to_many :achievements
  
  def self.create_from_hash!(hash)
    create(:name => hash['user_info']['name'])
  end
end
