<<<<<<< HEAD:app/models/conversation.rb
class Conversation < ApplicationRecord
=======
class Chatroom < ApplicationRecord
>>>>>>> 7a0b959 (Rename class to api/v1 and add seed data for chatroom):app/models/chatroom.rb
  has_many :messages
  has_many :users, through: :messages
    belongs_to :user_a, class_name: "User"
    belongs_to :user_b, class_name: "User"
    has_many :messages

    validates :user_a, uniqueness: { scope: [:user_b]}
    validates :user_b, uniqueness: { scope: [:user_a]}

    def user_a_messages
        self.messages.where(user: self.user_a)
    end

    def user_b_messages
        self.messages.where(user: self.user_b)
    end
end
