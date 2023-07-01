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

    field :user, Types::UserType, null: false, description: "User Object" do
      argument :id, ID, required: true
    end

    def user(id:)
      User.where(id: id).first
    end

    field :first_post, Types::PostType, null: false, description: "User's Post" do
      argument :user_id, ID, required: true
    end

    def first_post(user_id:)
      Post.where(user_id: user_id).first
    end

    field :user_posts, [Types::PostType], null: false, description: "User's all posts" do
      argument :user_id, ID, required: true
    end

    def user_posts(user_id:)
      Post.where(user_id: user_id).all
    end

    field :first_comment, Types::CommentType, null: false, description: "First comment on post" do
      argument :post_id, ID, required: true
    end

    def first_comment(post_id:)
      Comment.where(post_id: post_id).first
    end

    field :all_comments, [Types::CommentType], null: false, description: "All comments on a post"do
      argument :post_id, ID, required: true
    end

    def all_comments(post_id:)
      Comment.where(post_id: post_id).all
    end
  end
end
