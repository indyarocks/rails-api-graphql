module Types
  class MutationType < Types::BaseObject

    field :create_author, Types::AuthorType, description: "Create author" do
      argument :first_name, String, required: true
      argument :last_name, String, required: true
      argument :yob, Int
      argument :is_alive, Boolean
    end

    def create_author(first_name:, last_name:, yob:, is_alive:)
      Author.create(first_name: , last_name: , yob: , is_alive: )
    end
  end
end
