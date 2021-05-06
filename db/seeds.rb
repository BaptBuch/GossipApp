require 'faker'

10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end


10.times do
  cities_list = City.all
  User.create!(first_name: Faker::Superhero.prefix, last_name: Faker::Superhero.suffix, description: Faker::Hipster.sentence, email:Faker::Internet.email, age: Faker::Number.between(from: 18, to: 100), city: cities_list.sample)
end

10.times do
  Tag.create(title: Faker::Superhero.prefix)
end

20.times do
  u = User.all.sample
  gossip = Gossip.create(title: Faker::Movie.quote, content: Faker::Lorem.paragraph, user: u)
end