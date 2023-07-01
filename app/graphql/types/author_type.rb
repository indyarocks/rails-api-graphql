# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject

    description "One Author"
    
    field :id, ID, null: false
    field :first_name, String , description: "Author's first name" #, camelize: true
    field :last_name, String
    field :yob, Integer
    field :is_alive, Boolean
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end