# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :user_id, Int, null: false
    field :body, String, null: false
    field :comments, [Types::CommentType], null: false
  end
end