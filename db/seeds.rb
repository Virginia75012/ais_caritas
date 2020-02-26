# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Destroying users and flats...'
Flat.destroy_all
User.destroy_all
puts "Users and flats destroyed !"

puts "Creating users..."
pamela = User.create!(first_name: "pamela", last_name: "prieur", email: "pamela.prieur@gmail.com", password: "123456")
virginia = User.create!(first_name: "virginia", last_name: "atenza", email: "virginia.atenza@gmail.com", password: "123456")
ashley = User.create!(first_name: "ashley", last_name: "hoze", email: "ashleyhoze@gmail.com", password: "123456")
benjamin = User.create!(first_name: "benjamin", last_name: "dupont", email: "pdp@gmail.com", password: "123456")
xavier = User.create!(first_name: "xavier", last_name: "tl", email: "xavier@tl.com", password: "123456")

puts "creating gp..."
beau = Flat.create!(user: pamela, typology: "t2", area: "30", title:"Jolie appartement", address: "3 rue roger Salengro creteil", rent: 300, rental_charges: 26, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")



file = URI.open("https://avatars3.githubusercontent.com/u/57186441?v=4")
pamela.avatar.attach(io: file, filename: "pamela_avatar")
pamela.save

file = URI.open("https://avatars3.githubusercontent.com/u/29464477?v=4")
virginia.avatar.attach(io: file, filename: "virginia_avatar")
virginia.save

file = URI.open("https://avatars1.githubusercontent.com/u/55446352?v=4")
ashley.avatar.attach(io: file, filename: "ashley_avatar")
ashley.save

file = URI.open("https://avatars1.githubusercontent.com/u/54189912?v=4")
benjamin.avatar.attach(io: file, filename: "benjamin_avatar")
benjamin.save

file = URI.open("https://avatars3.githubusercontent.com/u/54706761?v=4")
xavier.avatar.attach(io: file, filename: "xavier_avatar")
xavier.save

file = URI.open("https://www.vanupied.com/wp-content/uploads/68550354.jpg")
beau.photos.attach(io: file, filename: "beau_photo")
beau.save

