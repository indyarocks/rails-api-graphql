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

1. Add `gem 'graphql`
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


