# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# i = 0
10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  # users[i].city = cities_list[rand(0..9)]
  # users[i].save
  # i +=1
end
cities_list = City.all

10.times do
  cities_list = City.all
  User.create!(first_name: Faker::Superhero.prefix, last_name: Faker::Superhero.suffix, description: Faker::Hipster.sentence, email:Faker::Internet.email, age: Faker::Number.between(from: 18, to: 100), city: cities_list.sample)
end
users = User.all


20.times do
  u = User.all.sample
  Gossip.create(title: Faker::Movie.quote, content: Faker::Lorem.paragraph, user: u)
end