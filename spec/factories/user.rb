Factory.define :user do |u|
  u.sequence(:login) { |i| "bobby#{i}" }
  u.sequence(:email) { |i| "bobby#{i}@example.com" }
  u.password 'bobby'
  u.password_confirmation 'bobby'
end
