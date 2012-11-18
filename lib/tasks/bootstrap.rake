desc "Bootstrap the initial environment"
task :bootstrap => [:environment, 'db:reset', 'db:schema:load'] do
  # require 'highline/import'


  puts "Creating first user"
  email = 'dejesus.ben@gmail.com'
  password = 'password'

  Brewer.create!(email: email, password: password, password_confirmation: password)
  Brewer.create!(email: 'test@test.com', password: password, password_confirmation: password)

  puts "Generating Ingredients"

  Ingredient.create!(name: 'Maris Otter', ingredient_type: 'Grains')
  Ingredient.create!(name: 'Victory', ingredient_type: 'Grains')
  Ingredient.create!(name: 'Flaked Barley', ingredient_type: 'Grains')
  Ingredient.create!(name: '20-20L Crystal', ingredient_type: 'Grains')

  Ingredient.create!(name: 'Malt Extract', ingredient_type: 'Malts')

  Ingredient.create!(name: 'Kent Golding', ingredient_type: 'Hops')
  Ingredient.create!(name: 'Challenger', ingredient_type: 'Hops')
  Ingredient.create!(name: 'Target', ingredient_type: 'Hops')

  Ingredient.create!(name: 'Safale 5-04', ingredient_type: 'Yeast')

  Ingredient.create!(name: 'Gypsum', ingredient_type: 'Other')
  Ingredient.create!(name: 'Dextrose', ingredient_type: 'Other')

  puts "Done!"
end