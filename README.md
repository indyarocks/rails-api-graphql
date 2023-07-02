# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

1. Add `gem 'graphql` Documentation [here](https://graphql-ruby.org/getting_started)
2. `bundle install`
3. `rails g graphql:install`


* GraphiQL:

Either install GraphiQL Query editor: https://formulae.brew.sh/cask/graphiql
OR add `gem "graphiql-rails"` in Gemfile and update routes.rb with:
```ruby
if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
end
```

## graphql gem generators:
Refer the generators https://github.com/rmosolgo/graphql-ruby/tree/master/lib/generators/graphql
* To generate graphql type for a model

`rails g graphql:object author`


* To generate graphql mutation for a model

`rails g graphql:mutation CreateUser`

On `http://localhost:3000/graphql` - GraphQL Query:
```javascript
mutation createUser(
  $first_name:String, 
  $last_name:String,
  $street:String,
  $number:Int,
  $city:String,
  $postcode: String,
  $country:String
) {
  createUser(input: {
    clientMutationId:"123",
    firstName:$first_name,
    lastName:$last_name,
    street:$street,
    number:$number,
    city:$city,
    postcode: $postcode,
    country:$country
  }){
    id
    fullName
    fullAddress
  }
}

//GraphQL Variables:
{
    "first_name": "Chandan",
    "last_name": "Jhunjhunwal",
    "street": "Handewadi",
    "number": 89238923,
    "city": "Pune",
    "postcode": "411028",
    "country": "India"
}

//Response:
{
    "data": {
    "createUser": {
        "id": "9",
            "fullName": "Chandan Jhunjhunwal",
            "fullAddress": "Handewadi-Pune-411028-India"
    }
}
}
```