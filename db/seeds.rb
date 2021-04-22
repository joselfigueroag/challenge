# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genders = ["ficcion", "drama", "accion", "terror", "suspenso", "comedia"]
qualifications = {"ficcion"=>1, "drama"=>2, "accion"=>3, "terror"=>5, "suspenso"=>5, "comedia"=>1}
5.times do |i|
  gen = genders.sample
  films = MovieSerie.create({
    title: Faker::Movie.title, 
    image: Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'sports', number: i+1), 
    create_date: Date.today-rand(1000), 
    gender: gen, 
    qualification: qualifications[gen]
  })
end

10.times do |i|
  character = Character.create({
    name: Faker::Artist.name,
    image: Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'sports', number: i+1),
    age: rand(18..49),
    weight: rand(40..75),
    story: Faker::Lorem.sentence(word_count: 3),
    movie_serie_id: rand(1..5)
  })
end