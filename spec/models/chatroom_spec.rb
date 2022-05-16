require 'rails_helper'

RSpec.describe Chatroom do
  describe 'validations' do
   end
  #
  describe 'relationships' do
    it { should have_many(:messages)}
  end
end
