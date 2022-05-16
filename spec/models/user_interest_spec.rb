require 'rails_helper'

RSpec.describe UserInterest do
  describe 'relationships' do
    it { should belong_to(:user)}
    it { should belong_to(:interest)}
  end
end
