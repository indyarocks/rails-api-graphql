module Types
  class MutationType < Types::BaseObject
    field :create_user, Types::UserType, mutation: Mutations::CreateUser

    field :create_author, Types::AuthorType, description: "Create author" do
      argument :first_name, String, required: false
      argument :last_name, String, required: false
      argument :yob, Int, required: false
      argument :is_alive, Boolean, required: false
    end

    def create_author(first_name:, last_name:, yob:, is_alive:)
      Author.create(first_name: , last_name: , yob: , is_alive: )
    end
  end
end
