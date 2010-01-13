class User < ActiveRecord::Base
  acts_as_authentic  
  has_many :ratings
  belongs_to :presenter
  has_many :comments
end