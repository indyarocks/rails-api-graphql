# frozen_string_literal: true

module Types
  class CoordinatesType < Types::BaseObject
    description "Co-ordinates of Author"

    field :latitude, Integer, null: false
    field :longitude, Integer, null: false

    def latitude
      object.first
    end

    def longitude
      object.last
    end
  end
end
