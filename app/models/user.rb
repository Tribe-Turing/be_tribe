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

  has_many :convos_a, class_name: 'Conversation', foreign_key: 'user_a_id'
  has_many :user_bs, through: :convos_a, source: :user_b

  has_many :convos_b, class_name: 'Conversation', foreign_key: 'user_b_id'
  has_many :user_as, through: :convos_b, source: :user_a

  def all_conversations
    all_convos = []

    convos_a.each do |convo|
      data = {
        convo: convo,
        user_a: User.find(convo.user_a_id),
        user_b: User.find(convo.user_b_id),
        messages: convo.messages
      }
      all_convos << data
    end

    convos_b.each do |convo|
      data = {
        convo: convo,
        user_a: User.find(convo.user_a_id),
        user_b: User.find(convo.user_b_id),
        messages: convo.messages
      }
      all_convos << data
    end

    all_convos
  end
end
