# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sports = Interest.create!(interest_name: 'sports')
night_life = Interest.create!(interest_name: 'night life')
networking = Interest.create!(interest_name: 'networking')
traveling = Interest.create!(interest_name: 'traveling')
video_games = Interest.create!(interest_name: 'video games')
cinema = Interest.create!(interest_name: 'cinema')
music = Interest.create!(interest_name: 'music')
nature = Interest.create!(interest_name: 'nature')
food = Interest.create!(interest_name: 'food')
art = Interest.create!(interest_name: 'art')
tech = Interest.create!(interest_name: 'tech')

User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', city: 'denver,co', interests: [sports, night_life, food])

User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', city: 'denver,co', interests: [art, traveling, video_games])

User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'https://images.unsplash.com/photo-1521768291053-f122b7fc3e00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', city: 'aurora,co', interests: [tech, nature, video_games])

User.create!(first_name: 'Gunnar', last_name: 'Sorensen', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', city: 'aurora,co', interests: [networking, traveling, video_games])

User.create!(first_name: 'Lauralyn', last_name: 'Watson', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'https://images.unsplash.com/photo-1531727991582-cfd25ce79613?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', city: 'aurora,co', interests: [tech, traveling, video_games])

User.create!(first_name: 'Rory', last_name: 'Magee', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'https://images.unsplash.com/photo-1529888730501-a20357637532?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', city: 'aurora,co', interests: [tech, traveling, video_games])

User.create!(first_name: 'Sam', last_name: 'Ivari', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', city: 'aurora,co', interests: [networking, nature, cinema])

User.create!(first_name: 'Sam', last_name: 'Mistele', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [music, traveling, cinema])

Conversation.create!(user_a_id: 1, user_b_id: 2, id: 15)

Message.create!(conversation_id: 15, user_id: 1, content: "Test 1" )
Message.create!(conversation_id: 15, user_id: 2, content: "Test 1" )
Message.create!(conversation_id: 15, user_id: 1, content: "Test 2" )
Message.create!(conversation_id: 15, user_id: 2, content: "Test 2" )
Message.create!(conversation_id: 15, user_id: 1, content: "Test 3" )
Message.create!(conversation_id: 15, user_id: 2, content: "Test 3" )
Message.create!(conversation_id: 15, user_id: 1, content: "Test 4" )
Message.create!(conversation_id: 15, user_id: 2, content: "Test 4" )
