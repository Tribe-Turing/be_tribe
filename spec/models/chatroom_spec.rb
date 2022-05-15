require 'rails_helper'

RSpec.describe Chatroom do
  describe 'validations' do
    it { should validate_presence_of(:title)}
  end

  describe 'relationships' do
    it { should have_many(:messages)}
    it { should have_many(:users).through(:messages)}
  end
end
