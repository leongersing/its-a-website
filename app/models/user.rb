class User < ActiveRecord::Base
  acts_as_authentic  
  has_many :ratings
  belongs_to :presenter
end

