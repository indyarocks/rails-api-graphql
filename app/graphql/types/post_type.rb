# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :user_id, Int, null: false
    field :body, String, null: false
  end
end