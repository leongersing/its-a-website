class Session < ActiveRecord::Base
  has_and_belongs_to_many :presenters, :class_name => 'User'
  belongs_to :category
  
  validates_presence_of :title, :start_time, :location
end
