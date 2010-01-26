class Comment < ActiveRecord::Base
  belongs_to :subject, :polymorphic => true
  belongs_to :user
  
  validates_presence_of :body, :user_id, :subject_id, :subject_type
  
  default_scope :order => 'created_at DESC'
end
