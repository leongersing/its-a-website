class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :presentation
<<<<<<< HEAD
=======
  validates_uniqueness_of :user_id, :scope => :presentation_id
>>>>>>> cbfa7f31562a6c0cfeebb2e0acc49680fbc3239b
end
