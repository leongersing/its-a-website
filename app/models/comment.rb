class Comment < ActiveRecord::Base
  validates_presence_of :body, :user_id, :subject_id, :subject_type
  
  belongs_to :subject, :polymorphic => true
  belongs_to :user
  
  default_scope :order => 'created_at DESC'
end
