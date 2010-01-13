class Presentation < ActiveRecord::Base
  has_many :ratings
  
  def rate_thumbs_up(user)
    if self.ratings.find_all_by_user_id(user).size == 0
      self.ratings.create(:user => user, :thumbs_up => true)
      self.positive_ratings += 1
    end
  end
  
  def rate_thumbs_down(user)
    if self.ratings.find_all_by_user_id(user).size == 0
      self.ratings.create(:user => user, :thumbs_up => false)
      self.negative_ratings += 1
    end
  end

end
