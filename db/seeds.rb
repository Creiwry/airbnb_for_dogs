# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'


#Data for Cities

10.times do |city|
  city = City.create(name: Faker::Address.city)
end

cities = City.all


#Data for Dogsitters

100.times do |dogsitter|
  dogsitter = Dogsitter.create(city: cities.sample, name: Faker::Name.name)
end

dogsitters = Dogsitter.all

#Data for Dogs

100.times do |dog|
  dog = Dog.create(city: cities.sample, name: Faker::Creature::Dog.name)
end

dogs = Dog.all

#Data for Strolls

200.times do |stroll|
  stroll = Stroll.create(dog: dogs.sample, dogsitter: dogsitters.sample)
end