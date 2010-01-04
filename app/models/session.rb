class Session < ActiveRecord::Base
has_many :speakers
has_many :attendees, :class_name => 'User'
belongs_to :category
validates_presence_of :title, :start_time, :location
end
