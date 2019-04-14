# frozen_string_literal: true

module GqlTypes
  class FriendType < BaseObject
    field :pairs, [UserType], null: false
  end
end
