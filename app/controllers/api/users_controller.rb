class Api::UsersController < ApplicationController
  def index
    @users = User.order('created_at DESC')
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :show, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.permit(:title, :service, :language, :description)
    end

end
