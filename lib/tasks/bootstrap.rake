desc "Bootstrap the initial environment"
task :bootstrap => [:environment, 'db:reset', 'db:schema:load'] do 
  # require 'highline/import'

  
  puts "Creating first user"
  email = 'dejesus.ben@gmail.com'
  password = 'password'
  
  Brewmeister.create!(email: email, password: password, password_confirmation: password)
  
  puts "Done!"
end