# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sports = Interest.create!(interest_name: 'sports')

eldridge = User.create!(first_name: 'Eldridge', last_name: 'Turambi', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co', interests: [sports, night_life, food])
andrew = User.create!(first_name: 'Andrew', last_name: 'Musselman', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'denver,co')
dillon = User.create!(first_name: 'Dillon', last_name: 'Parker', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')
gunnar = User.create!(first_name: 'Gunnar', last_name: 'Sorensen', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')
lauralyn = User.create!(first_name: 'Lauralyn', last_name: 'Watson', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')
rory = User.create!(first_name: 'Rory', last_name: 'Magee', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')
sam_i = User.create!(first_name: 'Sam', last_name: 'Ivari', pronouns: 'she/her', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')
sam_m = User.create!(first_name: 'Sam', last_name: 'Mistele', pronouns: 'he/him', password_digest: 'password', bio: 'self proclaimed cool kid from the block', picture: 'profile pic link', city: 'aurora,co')

eldridge.interests.create!(name: 'sports')
eldridge.interests.create!(name: 'night_life')
eldridge.interests.create!(name: 'food')

andrew.interests.create!(name: 'technology')
andrew.interests.create!(name: 'networking')
andrew.interests.create!(name: 'traveling')

dillon.interests.create!(name: 'video_games')
dillon.interests.create!(name: 'technology')
dillon.interests.create!(name: 'cinema')

gunnar.interests.create!(name: 'nature')
gunnar.interests.create!(name: 'technology')
gunnar.interests.create!(name: 'night_life')

lauralyn.interests.create!(name: 'sports')
lauralyn.interests.create!(name: 'music')
lauralyn.interests.create!(name: 'art')

rory.interests.create!(name: 'food')
rory.interests.create!(name: 'night_life')
rory.interests.create!(name: 'pets')

sam_i.interests.create!(name: 'pets')
sam_i.interests.create!(name: 'traveling')
sam_i.interests.create!(name: 'networking')

sam_m.interests.create!(name: 'technology')
sam_m.interests.create!(name: 'music')
sam_m.interests.create!(name: 'video_games')
