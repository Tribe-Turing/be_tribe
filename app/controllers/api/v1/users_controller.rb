class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: UserSerializer.all_users(users)
  end

  def show
    user = User.find_by(id: params[:id].to_i)
    render json: UserSerializer.one_user(user)
  end
end
