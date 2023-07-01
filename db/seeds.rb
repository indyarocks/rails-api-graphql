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

Faker::Config.locale = 'en-IND'

USER_COUNT = 5
POSTS_PER_USER = 5
COMMENTS_PER_POST = 5
#### Users
users_data = []
1.upto(USER_COUNT).each do |i|
  users_data.push({
                    first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    street: Faker::Address.street_address,
                    number: Faker::PhoneNumber.phone_number_with_country_code,
                    city: Faker::Address.city,
                    postcode: Faker::Address.postcode,
                    country: Faker::Address.country
                  })
end

users = User.create(users_data)

#### Posts
posts_data = []
users.each do |user|
  1.upto(POSTS_PER_USER) do |_|
    posts_data.push({
                      user_id: user.id,
                      body: Faker::Lorem.paragraph
                    })
  end
end

posts = Post.create(posts_data)

#### Comments data
comments_data = []
posts.each do |post|
  1.upto(COMMENTS_PER_POST) do |_|
    comments_data.push({
                         post_id: post.id,
                         body: Faker::Lorem.paragraph
                       })
  end
end

comments = Comment.create(comments_data)
