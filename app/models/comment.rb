class Comment < ActiveRecord::Base
  validates_presence_of :body, :user, :subject
  
  belongs_to :subject, :polymorphic => true
  belongs_to :user
end
