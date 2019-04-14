# frozen_string_literal: true

module GqlTypes
  class Query < GraphQL::Schema::Object
    field :users,   [UserType],   null: false
    field :friends, [FriendType], null: false do
      argument :user_id, Int, required: true, camelize: false
    end

    def users
      User.all
    end

    def friends(user_id:)
      User.find(user_id).friends
    end
  end
end
