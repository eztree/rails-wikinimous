# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Initializing seeds 🌱"

Article.destroy_all

10.times do |item|
  puts "Creating a new article"
  title = "#{Faker::Music.band}, #{Faker::Music.album}"
  content = Faker::Quote.yoda
  item = Article.new(title: title, content: content)
  item.save!
  puts "Article created!"
end

puts "End of the seeds ✔"