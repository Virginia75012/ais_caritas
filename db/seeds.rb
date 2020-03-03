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
virginia = User.create!(first_name: "virginia", last_name: "atenza", email: "virginia.atenza@gmail.com", password: "123456", admin: true)
ashley = User.create!(first_name: "ashley", last_name: "hoze", email: "ashleyhoze@gmail.com", password: "123456")
benjamin = User.create!(first_name: "benjamin", last_name: "dupont", email: "pdp@gmail.com", password: "123456")
xavier = User.create!(first_name: "xavier", last_name: "tl", email: "xavier@tl.com", password: "123456")

puts "creating gp..."
beau = Flat.create!(user: pamela, typology: "t2", area: "30", title:"Joli appartement", address: "3 rue roger Salengro creteil", rent: 300, rental_charges: 26, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")
moche = Flat.create!(user: pamela, typology: "t3", area: "37", title:"Bel emplacement", address: "13 avenue daumesnil paris", rent: 400, rental_charges: 260, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")
normal = Flat.create!(user: pamela, typology: "t4", area: "70", title:"Idéal famille", address: "94 rue du faubourg saint-antoine paris", rent: 1000, rental_charges: 400, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre", status: true)
waou = Flat.create!(user: pamela, typology: "t2", area: "32", title:"Bien agencé", address: "18 boulevard soult paris", rent: 700, rental_charges: 269, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")



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

file = URI.open("https://www.realites.com/uploads/media/operation/0001/20/thumb_19457_operation_349x249.jpeg")
moche.photos.attach(io: file, filename: "moche_photo")
moche.save

file = URI.open("https://img.netty.immo/productw/pietrapolis/20/VA28296/appartement-t1-lyon-vente-1564693658-VA28296_2_l.jpg")
normal.photos.attach(io: file, filename: "normal_photo")
normal.save

file = URI.open("https://q-xx.bstatic.com/xdata/images/hotel/840x460/118594458.jpg?k=b97e932dc729bb39042dde4458c764a91e2c6aa1cbe631aa5e424b1fa0347f6f&o=")
waou.photos.attach(io: file, filename: "waou_photo")
waou.save


