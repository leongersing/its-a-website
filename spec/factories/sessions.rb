Factory.define :session do |s|
  s.title 'Session Title'
  s.start_time Time.now
  s.location 'Ballroom A'
end

Factory.define :category do |c|
  c.title 'Ruby'
end