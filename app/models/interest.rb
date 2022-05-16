class Interest < ApplicationRecord
  validates_presence_of :interest_name

  has_many :user_interests
  has_many :users, through: :user_interests
end
