# README

* Ruby version
```shell
$> ruby -v
ruby 3.2.2 (2023-03-30 revision e51014f9c0) [arm64-darwin22]

```

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
  $first_name:String!, 
  $last_name:String!,
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

Short form:

```javascript
// Mutation query
mutation createUser(
  $user:CreateUserInput!
) {
  createUser(input: $user){
    id
    fullName
    fullAddress
  }
}
// Variables
{ "user": {
    "firstName": "Chandan",
        "lastName": "Jhunjhunwal",
        "street": "Handewadi",
        "number": 89238923,
        "city": "Pune",
        "postcode": "411028",
        "country": "India"
}

}
//Resposne
{
    "data": {
    "createUser": {
        "id": "12",
            "fullName": "Chandan Jhunjhunwal",
            "fullAddress": "Handewadi-Pune-411028-India"
    }
}
}
```