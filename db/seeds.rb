# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Dev.destroy_all
User.destroy_all

user1 = User.create!(email: 'yoanndeschaux@gmail.com', password: 'azerty')
user2 = User.create!(email: 'jbaubert@hotmail.com', password: 'azerty')
user3 = User.create!(email: 'justinedicaro@gmail.com', password: 'azerty')

dev1 = Dev.create!(
  user_id: user1.id,
  name: 'yoann',
  profile: 'back-end',
  price_per_day: 400,
  language: 'Rails',
  age: 35,
  city: "Lyon",
  disponibility: "true",
  rating: 4,
  avatar_url: "blala"
)

dev1.avatar.attach(
  io:  File.open(File.join(Rails.root,'yoann.jpg')),
  filename: 'yoann.jpg'
)

dev2 = Dev.create!(
  user_id: user1.id,
  name: 'JB',
  profile: 'front-end',
  price_per_day: 400,
  language: 'HTML, CSS',
  age: 30,
  city: "Paris",
  disponibility: "true",
  rating: 4,
  avatar_url: "blala"
)

dev2.avatar.attach(
  io:  File.open(File.join(Rails.root,'jb.photo.jpg')),
  filename: 'jb.photo.jpg'
)
