class Conversation < ApplicationRecord
  has_many :messages
  has_many :users, through: :messages
  belongs_to :user_a,foreign_key: :user_a_id, class_name: "User"
  belongs_to :user_b, foreign_key: :user_b_id, class_name: "User"

  validates_uniqueness_of :user_a_id, scope: :user_b_id

  scope :between, -> (user_a_id, user_b_id) do
    where("(conversations.user_a_id = ? AND   conversations.user_b_id =?) OR (conversations.user_a_id = ? AND conversations.user_b_id =?)", user_a_id, user_b_id, user_b_id, user_a_id)
  end
  def user_a_messages
      self.messages.where(user: self.user_a)
  end

  def user_b_messages
      self.messages.where(user: self.user_b)
  end
end
