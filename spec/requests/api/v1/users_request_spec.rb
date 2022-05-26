require 'rails_helper'

RSpec.describe 'Expose User API' do
  before :each do
    @sports = Interest.create!(interest_name: 'sports')
    @night_life = Interest.create!(interest_name: 'night life')
    @networking = Interest.create!(interest_name: 'networking')
    @traveling = Interest.create!(interest_name: 'traveling')
    @video_games = Interest.create!(interest_name: 'video games')
    @cinema = Interest.create!(interest_name: 'cinema')
    @music = Interest.create!(interest_name: 'music')
    @nature = Interest.create!(interest_name: 'nature')
    @food = Interest.create!(interest_name: 'food')
    @art = Interest.create!(interest_name: 'art')
    @tech = Interest.create!(interest_name: 'tech')

    @eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co', interests: [@sports, @night_life, @food])

    @andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co', interests: [@art, @traveling, @video_games])

    @dillon = User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [@tech, @nature, @video_games])

    @gunnar = User.create!(first_name: 'Gunnar', last_name: 'Sorensen', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [@networking, @traveling, @video_games])

    @lauralyn = User.create!(first_name: 'Lauralyn', last_name: 'Watson', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [@tech, @traveling, @video_games])

    @rory = User.create!(first_name: 'Rory', last_name: 'Magee', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [@tech, @traveling, @video_games])

    @sam_i = User.create!(first_name: 'Sam', last_name: 'Ivari', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [@networking, @nature, @cinema])

    @sam_m = User.create!(first_name: 'Sam', last_name: 'Mistele', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [@music, @traveling, @cinema])
    @conversation_1 = Conversation.create!(user_a_id: @eldridge.id, user_b_id: @andrew.id, id: 15)

    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 1')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 1')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 2')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 2')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 3')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 3')
    Message.create!(conversation_id: 15, user_id: @eldridge.id, content: 'Test 4')
    Message.create!(conversation_id: 15, user_id: @andrew.id, content: 'Test 4')
  end

  it 'sends json for a list of all users' do
    get "/api/v1/users"

    expect(response).to be_successful

    users = JSON.parse(response.body, symbolize_names: true)
    expect(users).to be_an(Array)
    users.each do |user|
      expect(user).to have_key(:first_name)
      expect(user).to have_key(:last_name)
      expect(user).to have_key(:pronouns)
      expect(user).to have_key(:image)
      expect(user).to have_key(:city)
      expect(user).to have_key(:interests)
      expect(user[:interests]).to be_an(Array)
      expect(user).to have_key(:bio)
    end
  end

  it 'sends json for one user based on id' do
    get "/api/v1/users/#{@eldridge.id}"

    expect(response).to be_successful

    user = JSON.parse(response.body, symbolize_names: true)
    expect(user).to be_a(Hash)
    expect(user).to have_key(:id)
    expect(user).to have_key(:first_name)
    expect(user).to have_key(:last_name)
    expect(user).to have_key(:pronouns)
    expect(user).to have_key(:image)
    expect(user).to have_key(:city)
    expect(user).to have_key(:interests)
    expect(user[:interests]).to be_an(Array)
    expect(user).to have_key(:bio)
  end

  it 'sends json to edit one user based on given params' do
    patch_params = {
      'city': 'aurora,co',
      'bio': "test",
      'pronouns': 'she/her',
      'interests': ['sports', 'night life', 'food', 'traveling', 'tech']
    }
    patch "/api/v1/users/#{@eldridge.id}", params: patch_params

    expect(response).to be_successful
    user = JSON.parse(response.body, symbolize_names: true)
    expect(user).to have_key(:id)
    expect(user).to have_key(:first_name)
    expect(user).to have_key(:last_name)
    expect(user).to have_key(:pronouns)
    expect(user).to have_key(:image)
    expect(user).to have_key(:city)
    expect(user[:city]).to eq('aurora,co')
    expect(user).to have_key(:interests)
    expect(user[:interests]).to be_an(Array)
    expect(user).to have_key(:bio)

    user[:interests].each do |interest|
      expect(interest).to be_a(String)
    end
  end
end
