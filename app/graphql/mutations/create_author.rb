module Mutations
  class CreateAuthor < BaseMutation
    null true
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :id, ID, required: false
    # argument :first_name, String, required: false
    # argument :last_name, String, required: false
    # argument :yob, Int, required: false
    # argument :is_alive, Boolean, required: false
    argument :author, Types::AuthorInputType

    # TODO: define resolve method
    def resolve(author:)
      Author.create(author.to_h)
    end
  end
end
