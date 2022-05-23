# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sports = Interest.create!(interest_name: 'sports')
night_life = Interest.create!(interest_name: 'nightlife')
networking = Interest.create!(interest_name: 'networking')
traveling = Interest.create!(interest_name: 'traveling')
video_games = Interest.create!(interest_name: 'gaming')
cinema = Interest.create!(interest_name: 'cinema')
music = Interest.create!(interest_name: 'music')
nature = Interest.create!(interest_name: 'nature')
food = Interest.create!(interest_name: 'food')
art = Interest.create!(interest_name: 'art')
tech = Interest.create!(interest_name: 'tech')

User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'deer', city: 'denver,co', interests: [sports, night_life, food])

User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'koala-bear', city: 'denver,co', interests: [art, traveling, video_games])

User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'lion', city: 'aurora,co', interests: [tech, nature, video_games])

User.create!(first_name: 'Gunnar', last_name: 'Sorensen', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'gorilla', city: 'aurora,co', interests: [networking, traveling, video_games])

User.create!(first_name: 'Lauralyn', last_name: 'Watson', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'red-fox', city: 'aurora,co', interests: [tech, traveling, video_games])

User.create!(first_name: 'Rory', last_name: 'Magee', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'dragon', city: 'aurora,co', interests: [tech, traveling, video_games])

User.create!(first_name: 'Sam', last_name: 'Ivari', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'catfish', city: 'aurora,co', interests: [networking, nature, cinema])

User.create!(first_name: 'Sam', last_name: 'Mistele', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'elephant', city: 'aurora,co', interests: [art, traveling, video_games])

User.create!(first_name: 'Mike', last_name: 'Dao', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'frog', city: 'aurora,co', interests: [networking, traveling, tech])

User.create!(first_name: 'Spongebob', last_name: 'Squarepants', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'meercat', city: 'aurora,co', interests: [video_games, traveling, cinema])

User.create!(first_name: 'Ash', last_name: 'Catchem', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'penguin', city: 'aurora,co', interests: [music, art, food])

User.create!(first_name: 'Taylor', last_name: 'Swift', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'armadillo', city: 'aurora,co', interests: [night_life, tech, cinema])

User.create!(first_name: 'Jane', last_name: 'Doe', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'cheetah', city: 'aurora,co', interests: [music, tech, nature])

User.create!(first_name: 'Reggie', last_name: 'Gigas', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'arctic fox', city: 'aurora,co', interests: [food, traveling, nature])

Conversation.create!(user_a_id: 1, user_b_id: 2, id: 1)

Message.create!(conversation_id: 1, user_id: 1, content: "Test 1" )
Message.create!(conversation_id: 1, user_id: 2, content: "Test 1" )
Message.create!(conversation_id: 1, user_id: 1, content: "Test 2" )
Message.create!(conversation_id: 1, user_id: 2, content: "Test 2" )
Message.create!(conversation_id: 1, user_id: 1, content: "Test 3" )
Message.create!(conversation_id: 1, user_id: 2, content: "Test 3" )
Message.create!(conversation_id: 1, user_id: 1, content: "Test 4" )
Message.create!(conversation_id: 1, user_id: 2, content: "Test 4" )


Conversation.create!(user_a_id: 3, user_b_id: 1, id: 2)

Message.create!(conversation_id: 2, user_id: 3, content: "Test 1" )
Message.create!(conversation_id: 2, user_id: 1, content: "Test 1" )
Message.create!(conversation_id: 2, user_id: 3, content: "Test 2" )
Message.create!(conversation_id: 2, user_id: 1, content: "Test 2" )
Message.create!(conversation_id: 2, user_id: 3, content: "Test 3" )
Message.create!(conversation_id: 2, user_id: 1, content: "Test 3" )
Message.create!(conversation_id: 2, user_id: 3, content: "Test 4" )
Message.create!(conversation_id: 2, user_id: 1, content: "Test 4" )

Conversation.create!(user_a_id: 5, user_b_id: 3, id: 3)

Message.create!(conversation_id: 3, user_id: 3, content: "Test 1" )
Message.create!(conversation_id: 3, user_id: 5, content: "Test 1" )
Message.create!(conversation_id: 3, user_id: 3, content: "Test 2" )
Message.create!(conversation_id: 3, user_id: 5, content: "Test 2" )
Message.create!(conversation_id: 3, user_id: 3, content: "Test 3" )
Message.create!(conversation_id: 3, user_id: 5, content: "Test 3" )
Message.create!(conversation_id: 3, user_id: 3, content: "Test 4" )
Message.create!(conversation_id: 3, user_id: 5, content: "Test 4" )
