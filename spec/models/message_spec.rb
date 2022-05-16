require 'rails_helper'

RSpec.describe Message do
  describe 'validations' do
    it { should validate_presence_of(:content)}
    it { should validate_presence_of(:user_id)}
    it { should validate_presence_of(:chatroom_id)}
  end

  describe 'relationships' do
    it {should belong_to(:user)}
    it {should belong_to(:chatroom)}
  end
end
