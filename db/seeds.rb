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
  name: 'Yoann DESCHAUX',
  profile: 'back-end',
  price_per_day: 350,
  language: 'Rails',
  age: 35,
  city: "Jarcieu (38)",
  disponibility: "true",
  rating: 3,
  avatar_url: "blala"
)

dev1.avatar.attach(
  io:  File.open(File.join(Rails.root,'dev_avatars/yoann.jpg')),
  filename: 'yoann.jpg'
)

dev2 = Dev.create!(
  user_id: user2.id,
  name: 'Jean-Baptiste AUBERT',
  profile: 'front-end',
  price_per_day: 400,
  language: 'HTML, CSS',
  age: 35,
  city: "Lyon",
  disponibility: "true",
  rating: 4,
  avatar_url: "blala"
)

dev2.avatar.attach(
  io:  File.open(File.join(Rails.root,'dev_avatars/jb.photo.jpg')),
  filename: 'jb.photo.jpg'
)

dev3 = Dev.create!(
  user_id: user2.id,
  name: 'Anoula CROVILLE',
  profile: 'front-end',
  price_per_day: 400,
  language: 'HTML, CSS',
  age: 40,
  city: "Lyon",
  disponibility: "true",
  rating: 4,
  avatar_url: "blala"
)

dev3.avatar.attach(
  io:  File.open(File.join(Rails.root,'dev_avatars/anoula.jpg')),
  filename: 'anoula.jpg'
)

  dev4 = Dev.create!(
    user_id: user3.id,
    name: 'Ines LAGARDE',
    profile: 'front-end',
    price_per_day: 450,
    language: 'HTML, CSS, JS',
    age: 22,
    city: "Bruxelles",
    disponibility: "true",
    rating: 5,
    avatar_url: "blala"
  )

  dev4.avatar.attach(
    io:  File.open(File.join(Rails.root,'dev_avatars/ines.jpg')),
    filename: 'ines.jpg'
  )

  dev5 = Dev.create!(
    user_id: user1.id,
    name: 'Axel Bertholle',
    profile: 'front-end',
    price_per_day: 420,
    language: 'HTML, CSS, JS',
    age: 30,
    city: "Lyon",
    disponibility: "true",
    rating: 4,
    avatar_url: "blala"
  )

  dev5.avatar.attach(
    io:  File.open(File.join(Rails.root,'dev_avatars/axel.jpg')),
    filename: 'axel.jpg'
  )

  dev6 = Dev.create!(
    user_id: user2.id,
    name: 'Florian CALABRESE',
    profile: 'front-end',
    price_per_day: 410,
    language: 'HTML, CSS, JS',
    age: 23,
    city: "Lyon",
    disponibility: "true",
    rating: 4,
    avatar_url: "blala"
  )

  dev6.avatar.attach(
    io:  File.open(File.join(Rails.root,'dev_avatars/florian.jpg')),
    filename: 'florian.jpg'
  )

  dev7 = Dev.create!(
    user_id: user2.id,
    name: 'Thomas DA CUNHA',
    profile: 'front-end',
    price_per_day: 400,
    language: 'HTML, CSS',
    age: 28,
    city: "Lyon",
    disponibility: "true",
    rating: 4,
    avatar_url: "blala"
  )

  dev7.avatar.attach(
    io:  File.open(File.join(Rails.root,'dev_avatars/thomas.jpg')),
    filename: 'thomas.jpg'
  )

  dev8 = Dev.create!(
    user_id: user3.id,
    name: 'Yanis DAHMANE',
    profile: 'fullstack',
    price_per_day: 500,
    language: 'HTML, CSS, JS, Rails, Python',
    age: 21,
    city: "Bourg-en-Bresse",
    disponibility: "true",
    rating: 5,
    avatar_url: "blala"
  )

  dev8.avatar.attach(
    io:  File.open(File.join(Rails.root,'dev_avatars/yanis.jpg')),
    filename: 'yanis.jpg'
  )

  dev9 = Dev.create!(
    user_id: user3.id,
    name: 'Justine DI CARO',
    profile: 'front-end',
    price_per_day: 400,
    language: 'HMTL, CSS',
    age: 30,
    city: "Lyon",
    disponibility: "true",
    rating: 4,
    avatar_url: "blala"
  )

  dev9.avatar.attach(
    io:  File.open(File.join(Rails.root,'dev_avatars/justine.jpg')),
    filename: 'justine.jpg'
  )

  dev10 = Dev.create!(
    user_id: user1.id,
    name: 'Allan Els',
    profile: 'back-end',
    price_per_day: 500,
    language: 'Rails, C++',
    age: 24,
    city: "Lyon",
    disponibility: "true",
    rating: 5,
    avatar_url: "blala"
  )

  dev10.avatar.attach(
    io:  File.open(File.join(Rails.root,'dev_avatars/allan.jpg')),
    filename: 'allan.jpg'
  )

  dev11 = Dev.create!(
    user_id: user2.id,
    name: 'Charles GROS',
    profile: 'back-end',
    price_per_day: 450,
    language: 'Rails, C++',
    age: 26,
    city: "Lyon",
    disponibility: "true",
    rating: 4,
    avatar_url: "blala"
  )

  dev11.avatar.attach(
    io:  File.open(File.join(Rails.root,'dev_avatars/charles.jpg')),
    filename: 'charles.jpg'
  )

    dev12 = Dev.create!(
      user_id: user3.id,
      name: 'Emmanuel LANDRON',
      profile: 'fullstack',
      price_per_day: 500,
      language: 'HTML, CSS, JS, Rails',
      age: 35,
      city: "Lyon",
      disponibility: "true",
      rating: 5,
      avatar_url: "blala"
    )

    dev12.avatar.attach(
      io:  File.open(File.join(Rails.root,'dev_avatars/emmanuel.jpg')),
      filename: 'emmanuel.jpg'
    )

    dev13 = Dev.create!(
      user_id: user3.id,
      name: 'Gaelle OZANON',
      profile: 'fullstack',
      price_per_day: 500,
      language: 'HTML, CSS, JS, Rails',
      age: 28,
      city: "Lyon",
      disponibility: "true",
      rating: 5,
      avatar_url: "blala"
    )

    dev13.avatar.attach(
      io:  File.open(File.join(Rails.root,'dev_avatars/gaelle.jpg')),
      filename: 'gaelle.jpg'
    )

    dev14 = Dev.create!(
      user_id: user2.id,
      name: 'Johan',
      profile: 'front-end',
      price_per_day: 410,
      language: 'HTML, CSS, JS',
      age: 29,
      city: "Lyon",
      disponibility: "true",
      rating: 4,
      avatar_url: "blala"
    )

    dev14.avatar.attach(
      io:  File.open(File.join(Rails.root,'dev_avatars/johan.jpg')),
      filename: 'johan.jpg'
    )

    dev15 = Dev.create!(
      user_id: user2.id,
      name: 'Kevin ',
      profile: 'front-end',
      price_per_day: 400,
      language: 'HTML, CSS, JS',
      age: 38,
      city: "Lyon",
      disponibility: "true",
      rating: 4,
      avatar_url: "blala"
    )

    dev15.avatar.attach(
      io:  File.open(File.join(Rails.root,'dev_avatars/kevin.jpg')),
      filename: 'kevin.jpg'
    )

    dev16= Dev.create!(
      user_id: user3.id,
      name: 'Johan WALTER',
      profile: 'back-end',
      price_per_day: 430,
      language: 'Rails',
      age: 30,
      city: "Les Mont d'Or",
      disponibility: "true",
      rating: 4,
      avatar_url: "blala"
    )

    dev16.avatar.attach(
      io:  File.open(File.join(Rails.root,'dev_avatars/johanwalter.jpg')),
      filename: 'johanwalter.jpg'
    )

    dev17= Dev.create!(
      user_id: user3.id,
      name: 'Samuel AMPHOUX',
      profile: 'back-end',
      price_per_day: 400,
      language: 'HTML, CSS, JS, Rails, Python',
      age: 26,
      city: "Lyon",
      disponibility: "true",
      rating: 4,
      avatar_url: "blala"
    )

    dev17.avatar.attach(
      io:  File.open(File.join(Rails.root,'dev_avatars/samuel.jpg')),
      filename: 'samuel.jpg'
    )
