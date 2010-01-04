Factory.define :session do |s|
  s.title 'Session Title'
  s.start_time Time.now
  s.location 'Ballroom A'
end

Factory.define :speaker do |s|
  s.name 'Jessica Suttles'
end

Factory.define :category do |c|
  c.title 'Ruby'
end