class Rating < ActiveRecord::Base
  belongs_to :presentation
  belongs_to :user

  validates_presence_of :user
  validates_presence_of :presentation
  validates_uniqueness_of :presentation_id, :scope=>:user_id

  def positive_count
    map{|r| r.score == 1}.length
  end
  
  def negative_count
    map{|r| r.score == -1}.length
  end
end
