class User < ApplicationRecord

  has_many :messages
  has_many :chatrooms, through: :messages

    has_many :convos_a, class_name: "Chatroom", foreign_key: "user_a_id"
    has_many :user_bs, through: :convos_a, source: :user_b

    has_many :convos_b, class_name: "Chatroom", foreign_key: "user_b_id"
    has_many :user_as, through: :convos_b, source: :user_a

    has_many :messages

end
