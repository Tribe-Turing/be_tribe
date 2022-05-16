require 'rails_helper'

RSpec.describe User do

  describe 'validations' do
    it { should validate_presence_of(:first_name)}
    it { should validate_presence_of(:last_name)}
    it { should validate_presence_of(:pronouns)}
    it { should validate_presence_of(:password_digest)}
    it { should validate_presence_of(:bio)}
    it { should validate_presence_of(:picture)}
    it { should validate_presence_of(:city)}
  end

  describe 'relationships' do
    it { should have_many(:user_interests)}
    it { should have_many(:interests).through(:user_interests)}
    it { should have_many(:messages)}
    it { should have_many(:chatrooms).through(:messages)}
  end
end
