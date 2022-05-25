require 'rails_helper'

RSpec.describe 'Expose Messages API' do
  before :each do
    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @dillon = User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')

    @conversation_1 = Conversation.create!(user_a_id: @eldridge.id, user_b_id: @andrew.id, id: 15)

    @message1 = Message.create!(conversation_id: @conversation_1.id, user_id: @eldridge.id, content: "Test 1" )
    Message.create!(conversation_id: @conversation_1.id, user_id: @andrew.id, content: "Test 1" )
    Message.create!(conversation_id: @conversation_1.id, user_id: @eldridge.id, content: "Test 2" )
    Message.create!(conversation_id: @conversation_1.id, user_id: @andrew.id, content: "Test 2" )
    Message.create!(conversation_id: @conversation_1.id, user_id: @eldridge.id, content: "Test 3" )
    Message.create!(conversation_id: @conversation_1.id, user_id: @andrew.id, content: "Test 3" )
    Message.create!(conversation_id: @conversation_1.id, user_id: @eldridge.id, content: "Test 4" )
    Message.create!(conversation_id: @conversation_1.id, user_id: @andrew.id, content: "Test 4" )

    @conversation_2 = Conversation.create!(user_a_id: @dillon.id, user_b_id: @andrew.id, id: 11)

    Message.create!(conversation_id: @conversation_2.id, user_id: @dillon.id, content: "Test 1" )
    Message.create!(conversation_id: @conversation_2.id, user_id: @andrew.id, content: "Test 1" )
    Message.create!(conversation_id: @conversation_2.id, user_id: @dillon.id, content: "Test 2" )
    Message.create!(conversation_id: @conversation_2.id, user_id: @andrew.id, content: "Test 2" )
    Message.create!(conversation_id: @conversation_2.id, user_id: @dillon.id, content: "Test 3" )
    Message.create!(conversation_id: @conversation_2.id, user_id: @andrew.id, content: "Test 3" )
    Message.create!(conversation_id: @conversation_2.id, user_id: @dillon.id, content: "Test 4" )
    Message.create!(conversation_id: @conversation_2.id, user_id: @andrew.id, content: "Test 4" )
  end


  it 'gets messages based on the conversation' do

    get "/api/v1/conversations/#{@conversation_1.id}"
    expect(response).to be_successful

    conversation = JSON.parse(response.body, symbolize_names: true)
    expect(conversation).to be_an(Hash)
    expect(conversation).to have_key(:id)
    expect(conversation).to have_key(:user_a_id)
    expect(conversation).to have_key(:user_b_id)
    expect(conversation).to have_key(:created_at)
    expect(conversation).to have_key(:updated_at)
  end

  it 'sends json for Message create' do
    post_message_params = {
      'content': 'create message',
      'user_id': @eldridge.id,
      'conversation_id': @conversation_1.id
    }
    post "/api/v1/messages", params: post_message_params

    expect(response).to be_successful

    message = JSON.parse(response.body, symbolize_names: true)
    expect(message).to be_a(Hash)
    expect(message).to have_key(:id)
    expect(message).to have_key(:content)
    expect(message[:content]).to eq('create message')
    expect(message).to have_key(:user_id)
    expect(message[:user_id]).to eq(@eldridge.id)
    expect(message).to have_key(:conversation_id)
    expect(message[:conversation_id]).to eq(@conversation_1.id)
    expect(message).to have_key(:created_at)
    expect(message).to have_key(:updated_at)
  end

  it 'sends json to update a message' do
    update_message_params = {
      'content': 'update message',
      'user_id': @eldridge.id,
      'conversation_id': @conversation_1.id
    }

    patch "/api/v1/messages/#{@message1.id}", params: update_message_params

    expect(response).to be_successful

    message = JSON.parse(response.body, symbolize_names: true)
    expect(message).to be_a(Hash)
    expect(message).to have_key(:id)
    expect(message).to have_key(:content)
    expect(message[:content]).to eq('update message')
    expect(message).to have_key(:conversation_id)
    expect(message).to have_key(:user_id)
    expect(message).to have_key(:created_at)
    expect(message).to have_key(:updated_at)
  end
end
