class PresentationQuestion < ActiveRecord::Base
  belongs_to :presentation
  belongs_to :user
  validates_presence_of :text
end
