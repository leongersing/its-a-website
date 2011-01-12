# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

achievements = Achievement.create(:name => "First Timer", :description => "You ranked your first session.")
achievements = Achievement.create(:name => "Old Timer", :description => "You ranked every session.")
#achievements = Achievement.create(:name => "Ruby Newbie", :description => "You ranked your first ruby session.")
#achievements = Achievement.create(:name => "Rubyist", :description => "You ranked every ruby session.")
