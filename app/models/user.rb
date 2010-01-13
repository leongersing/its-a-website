class User < ActiveRecord::Base
  acts_as_authentic
  belongs_to :presenter
  accepts_nested_attributes_for :presenter
  has_many :ratings
end

