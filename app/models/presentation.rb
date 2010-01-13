class Presentation < ActiveRecord::Base
  belongs_to :category
  has_many :ratings
  
  def rate_thumbs_up(user)
    rating = self.ratings.new(:user => user, :thumbs_up => true)
    if rating.save
      self.positive_ratings += 1
      self.save
    end
  end
  
  def rate_thumbs_down(user)
    rating = self.ratings.new(:user => user, :thumbs_up => false)
    if rating.save
      self.negative_ratings += 1
      self.save
    end
  end
end
