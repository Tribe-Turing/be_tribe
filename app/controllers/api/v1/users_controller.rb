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
    if user.update(user_params)
      params[:interests].each do |interest|
        if user.interests.include?(interest) == false
          db_interest = Interest.find_by(interest_name: interest)
          UserInterest.create!(user_id: user.id, interest_id: db_interest.id)
        end
      end
      render json: UserSerializer.one_user(user)
    else
      render json: { status: 400, message: "Unable to update user" }
    end
  end

  private
  def user_params
    params.permit(:first_name, :last_name, :city, :bio)
  end
end
