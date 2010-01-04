class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :session
  
  validates_presence_of :body, :message => "can't be a comment without something to say..."
end
