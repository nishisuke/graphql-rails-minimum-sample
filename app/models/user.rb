class User < ApplicationRecord
  def friends
    %i[user mate_user].inject(Friend.none) do |friends_query, column_name|
      friends_query.or(Friend.where(column_name => self))
    end
  end
end
