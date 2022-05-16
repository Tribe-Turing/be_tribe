class User < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :pronouns
  validates_presence_of :password_digest
  validates_presence_of :bio
  validates_presence_of :picture
  validates_presence_of :city

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :messages
  has_many :chatrooms, through: :messages

  has_many :convos_a, class_name: "Chatroom", foreign_key: "user_a_id"
  has_many :user_bs, through: :convos_a, source: :user_b

  has_many :convos_b, class_name: "Chatroom", foreign_key: "user_b_id"
  has_many :user_as, through: :convos_b, source: :user_a

end
