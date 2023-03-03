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

studio = Studio.new(
  user_id: user.id,
  name: "Abbey Road Studios",
  description: "Abbey Road studios are now regarded as the most iconic set of studios going, you can bet almost anyone has heard of them even if they’re not in the music industry. With their high-end gear and clientele boasting some of the most legendary names in the music business from The Beatles and Aretha Franklin to Kanye West and Lady Gaga, it’s no surprise they take the number one spot on our list. There is no shortage of artist development in this recording studio.",
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: "3 Abbey Rd, London NW8 9AY, United Kingdom"
  max_occupancy: rand(1..15)
)

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipN5c6XuujjIuumom6ySj7dvI9ZM1NDAHZN4TWJl=w1080-h608-p-k-no-v0")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Capitol Studios",
  description: "Fancy having your next track mixed & mastered by Grammy award winning engineers with state-of-the-art equipment straight from your bedroom?
  With their new online service, you can get your songs to stand up against highly commercial releases in terms of audio quality and volume starting at just under $200.
  They also have the option to cut vinyl masters in 2 super-easy online steps so you can be sure to have a good sounding record starting at $600 to produce.",
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: "1750 Vine St, Los Angeles, CA 90028, United States of America"
  max_occupancy: rand(1..11)
)

file = URI.open("https://www.themotormuseum.com/wp-content/uploads/2022/11/DSC_7133-1.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Air Studios",
  description: "The studio was founded in 1969 when George Martin left EMI Records to establish a quality recording sound complex in the heart of London. It has since become one of the most famous studios in the world.",
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location:Lyndhurst "Hall, Lyndhurst Road, Hampstead London NW3 5NG",
  max_occupancy: rand(1..8)
)

file = URI.open("https://www.headmusicstudios.com/img/bg/2.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save


studio = Studio.new(
  user_id: user.id,
  name: "Metropolis Studios",
  description: "What sets Metropolis apart from the noise and gives it a special place on our list? For me, it has to be the welcoming environment and writing rooms they have to offer, not to mention the optional accommodation. The rooms set a relaxed and inspiring environment with a choice of digital audio workstations, MIDI controllers and midi keyboards, iMacs loaded with Logic Pro X, Waves CLA Vocals, Pro Tools 12.8.1 and more impressive software to get your creativity flowing and put ideas to action.",
  price_per_hour: rand(1..80),
  is_soundproof: "false",
  location: "The Power House 70 Chiswick High Road London W4 1SY",
  max_occupancy: rand(1..5)
)

file = URI.open("https://major-tom.tv/processed/assets/images/1385/16-x-9-1050_JLD_MAJORTOM-HIGHER-RES_1bdaad4a4b4632870da53fb97d552706.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save


studio = Studio.new(
  user_id: user.id,
  name: "The Sound",
  description: "The studio was founded in 2000 by rapper Wyclef Jean and multi-platinum Grammy award-winning producer Jerry Duplessis. The main focus of the studio was sound quality, productivity and privacy so artists could feel at home and create the next hit record.
  The studio, like most, has acoustic treatment, and all bookings include studio time tailored to your needs.",
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
  name: "PALMA MUSIC STUDIOS",
  description: "At Palma Music Studios we have the privilege of being able to work with some of the world’s leading music industry names and brands.
  Their products allow us to continue to deliver excellent services for our clients.",
  price_per_hour: rand(1..100),
  is_soundproof: "false",
  location: "CARRER TORRENTÓ 24 07014 PALMA DE MALLORCA",
  max_occupancy: rand(1..8)
)

file = URI.open("https://americansongwriter.com/wp-content/uploads/2017/05/tss.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Daft Music Studios",
  description: "Daft Music Studios is more than just a recording studio, we are a creative residence.
  From writing, rehearsal and demo sessions to recording, mixing and
  even tour pre-production sessions: we have the space for you to work
  in the most comfortable conditions in an inspirational setting.
  A good vibe, good food and a relaxed atmosphere.
  We bring “home” to the studio…",
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: "Route de Waimes 19b 4960 Malmedy Belgium",
  max_occupancy: rand(1..8)
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/5ce131c4116c940001d52ba7/1616916897821-I5AR430U054FQPR7RD46/P1120063_batch-web.jpg?format=1000w")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Brothers in Arms Studio",
  description: "This is home to over 140 creative people and some of the most important recording studios in the UK. Making us one of London’s most diverse creative communities. ",
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: "Rua da Bempostinha 68B, 1150-099 Lisbon",
  max_occupancy: rand(1..8)
)

file = URI.open("https://www.headmusicstudios.com/img/bg/2.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Red Bull Music Studios LA",
  description: "Built in 2007 Red Bull Music Studios LA was created with every detail arranged to handle the most in-depth recording processes, and provide maximum flexibility. The room has a well appointed outboard gear selection, as well as a myriad of ...",
  price_per_hour: rand(1..80),
  is_soundproof: "true",
  location: "1740 Stewart St, Santa Monica, CA 90404, United States of America",
  max_occupancy: rand(1..5)
)

file = URI.open("https://major-tom.tv/processed/assets/images/1385/16-x-9-1050_JLD_MAJORTOM-HIGHER-RES_1bdaad4a4b4632870da53fb97d552706.jpg")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "Sunset Sound",
  description: "Located on Sunset Boulevard, Hollywood, Sunset Sound is not only famous for working with famous musicians but for recording music for many Disney movies as well. The popular Disney movie ‘Marry Poppins’’s music was recorded in the studio. Both old and new musicians have worked with the recording studio.
  Classic rock bands like Van Halen, Led Zeppelin, the Rolling Stones, and more walked through the doors. Modern musicians such as The Black Keys, M83, Jason Mraz, and more have also made music there. They have customized consoles and vintage equipment that are used to add ethereal elements to the music.",
  price_per_hour: rand(1..100),
  is_soundproof: "true",
  location: "6650 Sunset Blvd, Los Angeles, CA 90028, United States of America",
  max_occupancy: rand(1..8)
)

file = URI.open("https://images.squarespace-cdn.com/content/v1/5ce131c4116c940001d52ba7/1616916897821-I5AR430U054FQPR7RD46/P1120063_batch-web.jpg?format=1000w")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

studio = Studio.new(
  user_id: user.id,
  name: "SoundWay Studios",
  description: Faker::Lorem.paragraph(sentence_count: 12),
  price_per_hour: rand(1..100),
  is_soundproof: "false",
  location: "Kremou 34, Kallithea 176 76, Greece",
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
  location: "2155 Niagara Ln. N. UNIT 110, Plymouth, MN 55447, United States of America",
  max_occupancy: 2
)

file = URI.open("https://lh3.googleusercontent.com/p/AF1QipN5c6XuujjIuumom6ySj7dvI9ZM1NDAHZN4TWJl=w1080-h608-p-k-no-v0")
studio.photo.attach(io: file, filename: "planta_studio.png", content_type: "image/png")
studio.save

puts "Finished!"
