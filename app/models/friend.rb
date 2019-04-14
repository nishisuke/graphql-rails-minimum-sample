class Friend < ApplicationRecord
  belongs_to :user
  belongs_to :mate_user, class_name: :User

  def pairs
    [user, mate_user]
  end
end
