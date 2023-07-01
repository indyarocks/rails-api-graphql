module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "Description: An example field added by the generator" do
      argument :name, String, required: true
    end

    def test_field(name:)
      Rails.logger.info context[:time]
      "Hello #{name}!"
    end

    field :author, Types::AuthorType, null: true,
          description: "Returns one author instance" do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.where(id: id).first
    end

    # Root level field
    field :authors, [Types::AuthorType], null: false, description: "List of Authors"

    def authors
      Author.all
    end
  end
end
