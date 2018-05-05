class GroupSubscription < ApplicationRecord
  validates :user_id, :group_id, presence: true 

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_many :challenges,
    primary_key: :id,
    foreign_key: :group_subscription_id,
    class_name: :Challenges

end