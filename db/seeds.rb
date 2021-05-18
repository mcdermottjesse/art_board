# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user1 = User.create!({
  username: "Jesse",
  password: "Jesse"
})

Art.destroy_all

user1.arts.create!({
  name: "Drinking Coffee",
  image: "https://www.theartstory.org/images20/works/van_gogh_vincent_1.jpg?2",
  description: "Van Gogh",
  user_id: 1
})


p "Created #{User.count} user"

p "Created #{Art.count} pieces of art"