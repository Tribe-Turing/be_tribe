require 'rails_helper'

RSpec.describe Interest do
  describe 'validations' do
    it { should validate_presence_of(:sports)}
    it { should validate_presence_of(:night_life)}
    it { should validate_presence_of(:networking)}
    it { should validate_presence_of(:traveling)}
    it { should validate_presence_of(:video_games)}
    it { should validate_presence_of(:cinema)}
    it { should validate_presence_of(:music)}
    it { should validate_presence_of(:nature)}
    it { should validate_presence_of(:food)}
    it { should validate_presence_of(:art)}
    it { should validate_presence_of(:tech)}
  end

  describe 'relationships' do
    it { should belong_to(:user)}
  end
end
