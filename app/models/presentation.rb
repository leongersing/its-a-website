class Presentation < ActiveRecord::Base
  has_and_belongs_to_many :presenters
  belongs_to :category
  has_many :comments
  has_many :ratings
  validates_presence_of :title, :start_time, :location
  
  def positive_ratings
    ratings.select{|r| r.score == 1}.length
  end
  
  def negative_ratings
    ratings.select{|r| r.score == -1}.length
  end
end
