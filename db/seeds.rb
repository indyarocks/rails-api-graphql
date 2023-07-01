# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

author_data = [
  {
    first_name: "Chandan",
    last_name: "Jhunjhunwal",
    yob: 1985,
    is_alive: true
  },
  {
    first_name: "Alok",
    last_name: "Kumar",
    yob: 1986,
    is_alive: true
  },
  {
    first_name: "Ruby",
    last_name: "Goenka",
    yob: 1988,
    is_alive: true
  },
]

Author.create(author_data)