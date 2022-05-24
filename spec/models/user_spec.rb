require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:pronouns) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:bio) }
    it { should validate_presence_of(:picture) }
    it { should validate_presence_of(:city) }
  end

  describe 'relationships' do
    it { should have_many(:user_interests) }
    it { should have_many(:interests).through(:user_interests) }
    it { should have_many(:messages) }
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

  it 'that a users convo is an instance of Conversation' do
    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him',
                             password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him',
                           password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')

    @conversation_1 = Conversation.create!(user_a_id: @eldridge.id, user_b_id: @andrew.id, id: 15)

    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 1')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 1')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 2')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 2')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 3')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 3')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 4')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 4')

    @eldridge.convos_a.each do |convo|
      expect(convo).to be_a(Conversation)
    end
    @andrew.convos_b.each do |convo|
      expect(convo).to be_a(Conversation)
    end
  end

  it 'tests data for all conversations' do
    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him',
                             password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him',
                           password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')

    @conversation_1 = Conversation.create!(user_a_id: @eldridge.id, user_b_id: @andrew.id, id: 15)

    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 1')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 1')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 2')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 2')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 3')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 3')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 4')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 4')

    @andrew.all_conversations.each do |convo|
      expect(convo).to have_key(:user_a)
      expect(convo).to have_key(:user_b)
      expect(convo).to have_key(:messages)
    end
    @eldridge.all_conversations.each do |convo|
      expect(convo).to have_key(:user_a)
      expect(convo).to have_key(:user_b)
      expect(convo).to have_key(:messages)
    end
  end
end
