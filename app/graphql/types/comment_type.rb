# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :post_id, Integer, null: false
    field :body, String, null: false
  end
end