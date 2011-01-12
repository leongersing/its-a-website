require 'json'
require 'net/http'

desc "delete all data"

task :delete_data => :environment do |task|
  Presentation.delete_all
end

desc "import existing codemash sessions"

task :import_codemash_data => :environment do |task|
  url_location_of_data = 'http://www.codemash.org/rest/sessions.json'
  
  puts "getting raw json from '#{url_location_of_data}'"
  response = Net::HTTP.get_response(URI.parse(url_location_of_data))
  raw_data = response.body
  
  puts "parse json"
  json_data = JSON.parse(raw_data)
  
  json_data.each do |data|
    puts "- processing row"
   
    presentation = Presentation.new
    
    presentation.name = data["Title"]
    presentation.description = data["Abstract"]
    presentation.room = data["Room"]
    presentation.speaker_name = data["SpeakerName"]
    
    raw_time = data["Start"].scan(/[0-9]+/)[0].to_i
    converted_time = Time.at(raw_time)
    puts converted_time
    presentation.starts_at = converted_time
    
    if (presentation.save)
      puts "Save successful"
    else
      puts "FAIL!<br>#{presentation.errors.full_messages.join(",")}"
    end
  end
end
