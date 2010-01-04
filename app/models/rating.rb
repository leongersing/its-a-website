class Rating < ActiveRecord::Base
  belongs_to :session
  belongs_to :user
  
  def positive_count
    map{|r| r.score == 1}.length
  end
  
  def negative_count
    map{|r| r.score == -1}.length
  end
end
