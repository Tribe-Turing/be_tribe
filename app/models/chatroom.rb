class Chatroom < ApplicationRecord
  validates_presence_of :title
  has_many :messages
  has_many :users, through: :messages
end
