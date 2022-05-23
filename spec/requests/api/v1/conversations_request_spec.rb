require 'rails_helper'

RSpec.describe 'Expose Conversations API' do
  before :each do


    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
    @dillon = User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')

    @conversation_1 = Conversation.create!(user_a_id: @eldridge.id, user_b_id: @andrew.id, id: 15)

    @conversation_2 = Conversation.create!(user_a_id: @dillon.id, user_b_id: @andrew.id, id: 11)

  end


  it 'gets conversation based on the conversation id' do

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
  it 'gets all conversations' do

    get "/api/v1/conversations"
    expect(response).to be_successful
    conversation = JSON.parse(response.body, symbolize_names: true)
    expect(conversation).to be_an(Array)
    expect(conversation.count).to eq(2)

  end
  it 'creates a new conversation' do

    # @conversation_3 = Conversation.create!(user_a_id: @dillon.id, user_b_id: @eldridge.id, id: 5)

    post "/api/v1/conversations", :params => {user_a_id: @dillon.id, user_b_id: @eldridge.id}
    expect(response).to be_successful
    conversation = JSON.parse(response.body, symbolize_names: true)

    expect(conversation).to be_an(Hash)
    expect(conversation.count).to eq(5)

  end
end
