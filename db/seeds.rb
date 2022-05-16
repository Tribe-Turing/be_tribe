# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(first_name: 'firstname1', last_name: 'lastname1', pronouns: 'she/her', password_digest: 'password', bio: 'bio1', picture: 'profile pic link', )
# user1.interests.create!(name: 'technology')
# user1.interests.create!(name: 'clubbing')
# user1.interests.create!(name: 'pets')
