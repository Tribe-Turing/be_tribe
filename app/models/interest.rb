class Interest < ApplicationRecord
  validates_presence_of :sports
  validates_presence_of :night_life
  validates_presence_of :networking
  validates_presence_of :traveling
  validates_presence_of :video_games
  validates_presence_of :cinema
  validates_presence_of :music
  validates_presence_of :nature
  validates_presence_of :food
  validates_presence_of :art
  validates_presence_of :tech

  belongs_to :user
end
