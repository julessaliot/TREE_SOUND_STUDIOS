# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Studio.destroy_all

puts "Creating users..."
user = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

10.times do
  studio = Studio.create(
    user_id: user.id,
    name: Faker::Music.album,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price_per_hour: rand(1..100),
    is_soundproof: "true",
    location: Faker::Address.full_address,
    max_occupancy: rand(1..8)
  )
  puts "#{user.first_name} created #{studio.name}"
end

puts "Finished!"
