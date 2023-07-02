module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor, description: "Create Author"
    field :update_author, Boolean, null: false, description: "Update author" do
      argument :id, ID, required: true
      argument :first_name, String, required: false
      argument :last_name, String, required: false
      argument :yob, Int, required: false
      argument :is_alive, Boolean, required: false
    end

    def update_author(id:, first_name: nil , last_name: nil , yob: nil, is_alive: true )
      existing = Author.where(id:).first
      existing&.update(first_name: , last_name: , yob:, is_alive:)
    end

    # field :delete_user_mutation, mutation: Mutations::DeleteUserMutation
    field :create_user, Types::UserType, mutation: Mutations::CreateUser


    # def create_author(first_name:, last_name:, yob:, is_alive:)
    #   Author.create(first_name: , last_name: , yob: , is_alive: )
    # end
  end
end
