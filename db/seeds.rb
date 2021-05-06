# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  User.create!(first_name: Faker::Superhero.prefix, last_name: Faker::Superhero.suffix, description: Faker::Hipster.sentence, email:Faker::Internet.email, age: Faker::Number.between(from: 18, to: 100))
end
users = User.all

i = 0
10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  cities_list = City.all
  users[i].city = cities_list[rand(0..9)]
  users[i].save
  i +=1
end
