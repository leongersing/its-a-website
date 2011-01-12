desc "delete all data"

task :delete_data => :environment do |task|
  Presentation.delete_all
end
