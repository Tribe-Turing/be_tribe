class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: UserSerializer.all_users(users)
  end

  def show
    user = User.find_by(id: params[:id].to_i)
    render json: UserSerializer.one_user(user)
  end

  def update
    user = User.find_by(id: params[:id].to_i)
    user.reset_interests

    params[:interests].each do |interest|
      db_interest = Interest.find_by(interest_name: interest)
      new_interest = UserInterest.create!(user_id: user.id, interest_id: db_interest.id)
      user.interests << db_interest
    end
    render json: UserSerializer.one_user(user)
  end

  private
  def user_params
    params.permit(:first_name, :last_name, :city, :bio)
  end
end
