module Mutations
  class CreateUser < BaseMutation

    # It may be null, so null true
    null true
    # TODO: define return fields
    # field :create_user, Types::UserType, description: "Create User"
    # field :errors, [String], description: "Validation errors"

    # TODO: define arguments
    argument :id, ID, required: false
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :street, String, required: false
    argument :number, Int, required: false
    argument :city, String, required: false
    argument :postcode, String, required: false
    argument :country, String, required: false

    # TODO: define resolve method
    def resolve(first_name:, last_name:, street:, number:, city:, postcode:, country:)
      User.create(first_name: , last_name: , street: , number: , city: , postcode: , country: )
    end
  end
end
