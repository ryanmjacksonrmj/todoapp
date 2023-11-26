# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

user = User.create!(name: "Emma", email: "email2@test.com", password: "password")

Todo.create!([
  { user_id: "user.id", title: "Make dinner", description: "Cook some stuff up and eat it", deadline: "2023-12-25 18:19:03.378744", completed: false },
  { user_id: "user.id", title: "Do laundry", description: "Throw my clothes in the laundrey then add water", deadline: "2023-11-28 12:19:03.378744", completed: false },
  { user_id: "user.id", title: "Get gas", description: "Go to gas station and gas up", deadline: "2023-11-26 16:19:03.378744", completed: false },
])

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
