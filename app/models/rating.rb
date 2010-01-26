class Rating < ActiveRecord::Base
  belongs_to :user # making the rating
  belongs_to :presentation

  validates_uniqueness_of :user_id, :scope => :presentation_id
end
