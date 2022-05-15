class User < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :pronouns
  validates_presence_of :password_digest
  validates_presence_of :bio
  validates_presence_of :picture
  validates_presence_of :city

  has_many :interests
  has_many :messages
  has_many :chatrooms, through: :messages

end
