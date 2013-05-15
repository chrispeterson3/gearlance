class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new

  end

  def create
    @user = User.new
    @user.email = params[:email]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.save

    redirect_to users_url
  end
end