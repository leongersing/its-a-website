class Conference < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name

  has_many :presentations
  belongs_to :user
end
