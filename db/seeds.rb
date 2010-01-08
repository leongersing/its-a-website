# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

class CodeMashImporter
  include HTTParty
end

def clean_date(date)
  begin
    date.to_date
  rescue
    date = Time.now
  end
  date
end

CodeMashImporter.get("http://codemash.org/rest/speakers.json").each do |s|
  Presenter.create(:name            => s["Name"],
                   :reference_data  => s["SpeakerURI"],
                   :bio             => s["Biography"],
                   :contact_info    => s["ContactInfo"],
                   :blog_url        => s["BlogURL"],
                   :twitter_name    => s["TwitterHandle"]
                   )
end

CodeMashImporter.get("http://codemash.org/rest/sessions.json").each do |s|
  p = Presentation.new(:title            =>  s["Title"],
                          :description      =>  s["Abstract"],
                          :start_time       =>  clean_date(s["Start"]),
                          :location         =>  s["Room"].blank? ? "NA" : s["Room"],
                          :level            =>  s["Difficulty"],
                          :technology       =>  s["Technology"],
                          :category         =>  Category.find_or_create_by_title(s["Track"]),
                          :reference_data   =>  s["URI"])
                          
  speaker = Presenter.find_by_name(s["SpeakerName"])
  p.presenters << speaker unless speaker.blank?
  p.save!
end