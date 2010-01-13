Factory.define(:user) do |u|
  u.sequence(:login) {|n| "testuser#{n}" }
  u.sequence(:email) {|n| "foo#{n}@example.com" }
  u.password 'testpw'
  u.password_confirmation 'testpw'
end

# Factory.define(:speaker, :parent => :user) do |u|
#   u.role 'speaker'
# end