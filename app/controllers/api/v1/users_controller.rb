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
    binding.pry
    if user.update(user_params) #&& user.interests.update(params[:interests])
      # params[:interests].each do |interest|
      #   binding.pry
      #   if user.interests.include?(interest) == false
      #     UserInterest.new(user_id: params[:id].to_i, interest: interest)
      #   end
      # end
      render json: UserSerializer.one_user(user)
    else
      render json: { status: 400, message: "Unable to update user" }
    end
    # binding.pry
  end

  private
  def user_params
    params.permit(:first_name, :last_name, :city, :bio)
  end
end
