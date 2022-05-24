require 'rails_helper'

RSpec.describe Message do
  describe 'validations' do
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:conversation_id) }
  end

  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:conversation) }
  end

  it 'tests user_prof_pic' do
    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him',
                             password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him',
                           password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @dillon = User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him',
                           password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')

    @conversation_1 = Conversation.create!(user_a_id: @eldridge.id, user_b_id: @andrew.id, id: 15)

    message_1 = Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 1')
    message_2 = Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 1')
    message_3 = Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 2')
    message_4 = Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 2')
    message_5 = Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 3')
    message_6 = Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 3')
    message_7 = Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 4')
    message_8 = Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 4')
    require 'pry'
    binding.pry
    expect(message_1.user_prof_pic).to eq(message_1.user[:picture])
  end
end
