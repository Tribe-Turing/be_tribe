require 'rails_helper'

RSpec.describe 'Expose Messages API' do
  before :each do


    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @dillon = User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')

    @conversation_1 = Conversation.create!(user_a_id: @eldridge.id, user_b_id: @andrew.id, id: 15)

    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: "Test 1" )
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: "Test 1" )
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: "Test 2" )
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: "Test 2" )
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: "Test 3" )
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: "Test 3" )
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: "Test 4" )
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: "Test 4" )

    @conversation_2 = Conversation.create!(user_a_id: @dillon.id, user_b_id: @andrew.id, id: 11)

    Message.create!(conversation_id: 11, user_id: @dillon.id, content: "Test 1" )
    Message.create!(conversation_id: 11, user_id: @andrew.id, content: "Test 1" )
    Message.create!(conversation_id: 11, user_id: @dillon.id, content: "Test 2" )
    Message.create!(conversation_id: 11, user_id: @andrew.id, content: "Test 2" )
    Message.create!(conversation_id: 11, user_id: @dillon.id, content: "Test 3" )
    Message.create!(conversation_id: 11, user_id: @andrew.id, content: "Test 3" )
    Message.create!(conversation_id: 11, user_id: @dillon.id, content: "Test 4" )
    Message.create!(conversation_id: 11, user_id: @andrew.id, content: "Test 4" )
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

  # it 'sends json for one user based on id' do
  #   get "/api/v1/users/#{@eldridge.id}"
  #
  #   expect(response).to be_successful
  #
  #   user = JSON.parse(response.body, symbolize_names: true)
  #   expect(user).to be_a(Hash)
  #   expect(user).to have_key(:id)
  #   expect(user).to have_key(:first_name)
  #   expect(user).to have_key(:last_name)
  #   expect(user).to have_key(:pronouns)
  #   expect(user).to have_key(:image)
  #   expect(user).to have_key(:city)
  #   expect(user).to have_key(:interests)
  #   expect(user[:interests]).to be_an(Array)
  #   expect(user).to have_key(:bio)
  # end
end
