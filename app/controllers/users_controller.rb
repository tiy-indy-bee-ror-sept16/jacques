class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, serializer: UserExpandedSerializer
    else
      render json: {errors: @user.errors.full_messages.map{|e| {error: e}}}, status: 400
    end
  end

  private

  def user_params
    params.permit(:username, :email, :password)
  end

end
