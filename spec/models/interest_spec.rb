require 'rails_helper'

RSpec.describe Interest do
  describe 'validations' do
    it { should validate_presence_of(:interest_name)}
  end

  describe 'relationships' do
    it { should belong_to(:user)}
  end
end
