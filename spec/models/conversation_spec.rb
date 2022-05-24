require 'rails_helper'

RSpec.describe Conversation do
  describe 'validations' do
   end
  #
  describe 'relationships' do
    it { should have_many(:messages)}
  it 'tests for user a messages' do
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
    @conversation_1.user_a_messages.each do |message|
      expect(message).to be_a(Message)
    end
  end
end
