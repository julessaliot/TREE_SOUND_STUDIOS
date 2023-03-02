# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Studio.destroy_all

puts "Creating users..."
user = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

# 10.times do
#   studio = Studio.create(
#     user_id: user.id,
#     name: Faker::Music.album,
#     description: Faker::Lorem.paragraph(sentence_count: 2),
#     price_per_hour: rand(1..100),
#     is_soundproof: "true",
#     location: Faker::Address.full_address,
#     max_occupancy: rand(1..8)

#   )

#   puts "#{user.first_name} created #{studio.name}"
# end



studio = Studio.new(
  user_id: user.id,
  name: "Studio Liquid Gold",
  description: Faker::Lorem.paragraph(sentence_count: 8),
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..15)
)

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipN5c6XuujjIuumom6ySj7dvI9ZM1NDAHZN4TWJl=w1080-h608-p-k-no-v0")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "The Cine",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..11)
)

file = URI.open("https://www.themotormuseum.com/wp-content/uploads/2022/11/DSC_7133-1.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Qubix Audio Studio",
  description: Faker::Lorem.paragraph(sentence_count: 11),
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..8)
)

file = URI.open("https://www.headmusicstudios.com/img/bg/2.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save


studio = Studio.new(
  user_id: user.id,
  name: "String Secret",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  price_per_hour: rand(1..80),
  is_soundproof: "false",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..5)
)

file = URI.open("https://major-tom.tv/processed/assets/images/1385/16-x-9-1050_JLD_MAJORTOM-HIGHER-RES_1bdaad4a4b4632870da53fb97d552706.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save


studio = Studio.new(
  user_id: user.id,
  name: "The Sound",
  description: Faker::Lorem.paragraph(sentence_count: 15),
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..8)
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/5ce131c4116c940001d52ba7/1616916897821-I5AR430U054FQPR7RD46/P1120063_batch-web.jpg?format=1000w")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Razzle Dazzle",
  description: Faker::Lorem.paragraph(sentence_count: 9),
  price_per_hour: rand(1..100),
  is_soundproof: "false",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..8)
)

file = URI.open("https://americansongwriter.com/wp-content/uploads/2017/05/tss.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "The Stage",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..8)
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/5ce131c4116c940001d52ba7/1616916897821-I5AR430U054FQPR7RD46/P1120063_batch-web.jpg?format=1000w")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Brothers in Arms Studio",
  description: Faker::Lorem.paragraph(sentence_count: 8),
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..8)
)

file = URI.open("https://www.headmusicstudios.com/img/bg/2.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "The Succesful",
  description: Faker::Lorem.paragraph(sentence_count: 12),
  price_per_hour: rand(1..80),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..5)
)

file = URI.open("https://major-tom.tv/processed/assets/images/1385/16-x-9-1050_JLD_MAJORTOM-HIGHER-RES_1bdaad4a4b4632870da53fb97d552706.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Groove Gang",
  description: Faker::Lorem.paragraph(sentence_count: 9),
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..8)
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/5ce131c4116c940001d52ba7/1616916897821-I5AR430U054FQPR7RD46/P1120063_batch-web.jpg?format=1000w")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "RapidWay Sounds Studio",
  description: Faker::Lorem.paragraph(sentence_count: 12),
  price_per_hour: rand(1..100),
  is_soundproof: "false",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..8)
)

file = URI.open("https://americansongwriter.com/wp-content/uploads/2017/05/tss.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Copycats Media Studio Room",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: Faker::Address.full_address,
  max_occupancy: rand(1..10)
)

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipN5c6XuujjIuumom6ySj7dvI9ZM1NDAHZN4TWJl=w1080-h608-p-k-no-v0")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

puts "Finished!"
