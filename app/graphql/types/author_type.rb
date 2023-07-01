# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject

    description "One Author"
    
    field :id, ID, null: false
    field :first_name, String , null: true, description: "Author's first name" #, camelize: true
    field :last_name, String, null: true
    field :yob, Integer, null: true
    field :is_alive, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :full_name, String, null: true
    field :full_name_graphql_only, String, null: true
    field :coordinates, Types::CoordinatesType, null: false

    def full_name_graphql_only
      "#{object.first_name}-#{object.last_name}"
    end
  end
end
