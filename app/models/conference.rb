class Conference < ActiveRecord::Base
  has_many :presentations
  belongs_to :user

  validates_uniqueness_of :name
  validates_presence_of :name
end
