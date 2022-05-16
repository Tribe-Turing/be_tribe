class Interest < ApplicationRecord
  belongs_to :user

  validates_presence_of :interest_name
end
