class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(realName: params[:user][:realName],
      handle: params[:user][:handle],
      email: params[:user][:email]
      )
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end


end
