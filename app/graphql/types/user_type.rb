# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String
    field :last_name, String
    field :street, String
    field :number, String
    field :city, String
    field :postcode, String
    field :country, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :posts, [Types::PostType], null: false
    field :full_address, String, null: false
    field :address, String, null: false
    field :full_name, String, null: false

    def full_name
      "#{object.first_name} #{object.last_name}"
    end

    # We intentionally exclude any address component that is nil, empty or made only of whitespaces
    # and we join the rest using a comma.
    def address
      ([:street, :number, :postcode, :city, :country].map do |a|
        object.send(a)&.strip
      end.compact - ['']).join(', ')
    end
  end
end
