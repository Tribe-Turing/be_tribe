class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: UserSerializer.all_users(users)
  end
end
