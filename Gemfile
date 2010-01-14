bundle_path "vendor/bundler_gems"
source "http://gems.github.com"

gem "facebooker"
gem "twitter"
gem "jrails"
gem "authlogic"
gem "formtastic"
gem "sqlite3-ruby", :require_as => 'sqlite3'

only :test do
  gem "rspec", :require_as => "spec"
  gem "rspec-rails", :require_as => nil
  gem "mocha"
  gem "factory_girl"
end

disable_system_gems