# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sports = Interest.create!(interest_name: 'sports')
night_life = Interest.create!(interest_name: 'night_life')
networking = Interest.create!(interest_name: 'networking')
traveling = Interest.create!(interest_name: 'traveling')
video_games = Interest.create!(interest_name: 'video_games')
cinema = Interest.create!(interest_name: 'cinema')
music = Interest.create!(interest_name: 'music')
nature = Interest.create!(interest_name: 'nature')
food = Interest.create!(interest_name: 'food')
art = Interest.create!(interest_name: 'art')
tech = Interest.create!(interest_name: 'tech')

User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co', interests: [sports, night_life, food])

User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co', interests: [art, traveling, video_games])

User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [tech, nature, video_games])

User.create!(first_name: 'Gunnar', last_name: 'Sorensen', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [networking, traveling, video_games])

User.create!(first_name: 'Lauralyn', last_name: 'Watson', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [tech, traveling, video_games])

User.create!(first_name: 'Rory', last_name: 'Magee', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [tech, traveling, video_games])

User.create!(first_name: 'Sam', last_name: 'Ivari', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [networking, nature, cinema])

User.create!(first_name: 'Sam', last_name: 'Mistele', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co', interests: [music, traveling, cinema])
