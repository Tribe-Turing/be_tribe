require 'rails_helper'

RSpec.describe Conversation do
  describe 'validations' do
   end
  #
  describe 'relationships' do
    it { should have_many(:messages)}
  end
end
