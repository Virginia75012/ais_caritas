# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "open-uri"

puts 'Destroying users and flats...'
Flat.destroy_all
User.destroy_all
puts "Users and flats destroyed !"

puts "Creating users..."
nathalie = User.create!(first_name: "nathalie", last_name: "prieur", email: "nathalie.prieur@gmail.com", password: "123456")
julia = User.create!(first_name: "julia", last_name: "atenza", email: "julia.atenza@gmail.com", password: "123456", admin: true)
ashley = User.create!(first_name: "ashley", last_name: "hozé", email: "ashleyhoze@gmail.com", password: "123456")
benjamin = User.create!(first_name: "benjamin", last_name: "dupont", email: "pdp@gmail.com", password: "123456")
xavier = User.create!(first_name: "xavier", last_name: "tl", email: "xavier@tl.com", password: "123456")

puts "creating flats..."
beau = Flat.create!(user: nathalie, typology: "t2", area: "30", title:"Joli appartement", address: "3 rue Roger Salengro, CRETEIL", rent: 300, rental_charges: 26, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")
moche = Flat.create!(user: nathalie, typology: "t3", area: "37", title:"Bel emplacement", address: "13 avenue Daumesnil, PARIS", rent: 400, rental_charges: 260, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre", status: true)
normal = Flat.create!(user: nathalie, typology: "t4", area: "70", title:"Idéal famille", address: "94 rue du Faubourg Saint-Antoine, PARIS", rent: 1000, rental_charges: 400, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")
waou = Flat.create!(user: nathalie, typology: "t2", area: "32", title:"Bien agencé", address: "18 boulevard Soult, PARIS", rent: 700, rental_charges: 269, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")
flat = Flat.create!(user: ashley, typology: "t3", area: "45", title:"Belle vue", address: "9 rue de Valmy, MONTREUIL", rent: 700, rental_charges: 269, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")
vir = Flat.create!(user: ashley, typology: "t4", area: "89", title:"Grand espace à vivre", address: "34 allée Vivaldi, PARIS", rent: 700, rental_charges: 269, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre", status: true)
pap = Flat.create!(user: ashley, typology: "t2", area: "21", title:"Décoration orientale", address: "71 rue Dulong, PARIS", rent: 700, rental_charges: 269, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")
mam = Flat.create!(user: xavier, typology: "t4", area: "76", title:"Proche du métro", address: "25 rue du Cygne, SAINT-DENIS ", rent: 700, rental_charges: 269, current_state: "libre", appartement_condition: "neuf", message: "bla", origin_contact: "autre")

puts "done"

file = URI.open("https://res.cloudinary.com/du2om2w67/image/upload/v1583423927/nathalie_uqn4im.jpg")
nathalie.avatar.attach(io: file, filename: "nathalie_avatar")
nathalie.save!

file = URI.open("https://res.cloudinary.com/du2om2w67/image/upload/v1583423927/julia_p1wtla.jpg")
julia.avatar.attach(io: file, filename: "julia_avatar")
julia.save!

file = URI.open("https://avatars1.githubusercontent.com/u/55446352?v=4")
ashley.avatar.attach(io: file, filename: "ashley_avatar")
ashley.save!

file = URI.open("https://avatars1.githubusercontent.com/u/54189912?v=4")
benjamin.avatar.attach(io: file, filename: "benjamin_avatar")
benjamin.save!

file = URI.open("https://avatars3.githubusercontent.com/u/54706761?v=4")
xavier.avatar.attach(io: file, filename: "xavier_avatar")
xavier.save!

file = URI.open("https://www.vanupied.com/wp-content/uploads/68550354.jpg")
beau.photos.attach(io: file, filename: "beau_photo")
beau.save!

file = URI.open("https://www.realites.com/uploads/media/operation/0001/20/thumb_19457_operation_349x249.jpeg")
moche.photos.attach(io: file, filename: "moche_photo")
moche.save!

file = URI.open("https://img.netty.immo/productw/pietrapolis/20/VA28296/appartement-t1-lyon-vente-1564693658-VA28296_2_l.jpg")
normal.photos.attach(io: file, filename: "normal_photo")
normal.save!

file = URI.open("https://q-xx.bstatic.com/xdata/images/hotel/840x460/118594458.jpg?k=b97e932dc729bb39042dde4458c764a91e2c6aa1cbe631aa5e424b1fa0347f6f&o=")
waou.photos.attach(io: file, filename: "waou_photo")
waou.save!


file = URI.open("https://www.18h39.fr/wp-content/uploads/2019/12/appartement-lumineux-bo-bon-600x420.jpg")
flat.photos.attach(io: file, filename: "flat_photo")
flat.save!

file = URI.open("https://img.netty.immo/productcw/aimmobilier2/6/VA2388/appartement-t3-toulouse-vente-1560871299-VA2388_4_l.jpg")
vir.photos.attach(io: file, filename: "vir_photo")
vir.save!


file = URI.open("https://deavita.fr/wp-content/uploads/2017/01/d%C3%A9cor-oriental-espace-outdoor-table-bois-tapis-kilim.jpg")
pap.photos.attach(io: file, filename: "pap_photo")
pap.save!


file = URI.open("https://medias.squarehabitat.fr/photos/medium/843-008FB90098154AFD8A14329A534ABEC4_1.jpg")
mam.photos.attach(io: file, filename: "mam_photo")
mam.save!






