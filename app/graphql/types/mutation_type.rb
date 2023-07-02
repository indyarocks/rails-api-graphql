module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor, description: "Create Author"
    # field :delete_user_mutation, mutation: Mutations::DeleteUserMutation
    field :create_user, Types::UserType, mutation: Mutations::CreateUser
    

    # def create_author(first_name:, last_name:, yob:, is_alive:)
    #   Author.create(first_name: , last_name: , yob: , is_alive: )
    # end
  end
end
