require 'rails_helper'

RSpec.describe Interest do
  describe 'validations' do
    it { should validate_presence_of(:interest_name)}
  end

  describe 'relationships' do
    it { should have_many(:user_interests)}
    it { should have_many(:users).through(:user_interests)}
  end
end
