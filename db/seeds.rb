require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

file = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
ingredients = JSON.parse(file.read)
puts "creating ingredients"
ingredients["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
  puts "#{ingredient} created"
end
