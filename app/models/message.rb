class Message < ApplicationRecord
  validates_presence_of :content
  validates_presence_of :user_id
  validates_presence_of :chatroom_id
  belongs_to :user
  belongs_to :chatroom

  def user_prof_pic
      self.user.profile_pic
  end

  def user_username
      self.user.username
  end
end
