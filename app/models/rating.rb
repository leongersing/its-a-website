class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :presentation

  validates_uniqueness_of :user_id, :scope => :presentation_id
end
