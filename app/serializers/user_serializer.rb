class UserSerializer

  def self.all_users(users)
    users.map do |user|
      {
        "id": user.id,
        "first_name": user.first_name,
        "last_name": user.last_name,
        "pronouns": user.pronouns,
        "image": user.picture,
        "city": user.city,
        "interests": user.interests.map { |interest|  interest.interest_name },
        "bio": user.bio
      }
    end
  end

  def self.one_user(user)
    {
      "id": user.id,
      "first_name": user.first_name,
      "last_name": user.last_name,
      "pronouns": user.pronouns,
      "image": user.picture,
      "city": user.city,
      "interests": user.interests.map { |interest|  interest.interest_name },
      "bio": user.bio,
      "conversations": user.all_conversations
    }
  end
end
