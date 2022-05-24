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
    it { should have_many(:convos_a) }
    it { should have_many(:user_bs) }
    it { should have_many(:convos_b) }
    it { should have_many(:user_as) }
  end
  it 'all_conversations is an array' do
    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him',
                             password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him',
                           password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')

    expect(@eldridge.all_conversations).to be_an(Array)
  end
  xit 'tests for convos a  & b' do
    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him',
                             password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him',
                           password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    require 'pry'
    binding.pry
    expect(@eldridge.convos_a).to eq([])
  end
end
