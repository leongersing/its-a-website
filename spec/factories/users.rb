Factory.sequence :email do |n|
  "person#{n}@example.com"
end

Factory.sequence :login do |n|
  "Leon_#{n}"
end
 
Factory.define :user do |u|
  u.login { Factory.next :login }
  u.email { Factory.next :email }
  u.password "password"
  u.password_confirmation "password"
end