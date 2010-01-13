namespace :gems do
  task :install do
    system('gem bundle')
  end
end
