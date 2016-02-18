class Admin::UsersController < ApplicationController
  layout 'dashboard'

  def index
    @users = User.all
  end

  def show
      @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save
    redirect_to '/'
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/'
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
