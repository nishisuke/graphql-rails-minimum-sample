# frozen_string_literal: true

module GqlTypes
  class UserType < BaseObject
    field :name,       String,       null: false
    field :age,        String,       null: true
    field :created_at, String,       null: false
    field :friends,    [FriendType], null: false
  end
end
