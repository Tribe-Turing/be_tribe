class Message < ApplicationRecord
  validates_presence_of :content
  validates_presence_of :user_id
  validates_presence_of :conversation_id
  belongs_to :user
  belongs_to :conversation
  
end
