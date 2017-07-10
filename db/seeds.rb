# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.new
admin.username = 'admin'
admin.email = 'admin@email.com'
admin.password = '123456'
admin.admin = true
admin.save!

Product.destroy_all

10.times do |index|
  Product.create!(title: Faker::Book.title,
                  artist: Faker::HarryPotter.character,
                  description: Faker::Hipster.sentence(10, false, 4),
                  image: Faker::Fillmurray.image(true),
									price: Faker::Number.between(20, 100))
end

p "Created #{Product.count} products"
