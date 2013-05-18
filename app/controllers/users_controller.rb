class UsersController < ApplicationController
  before_filter :authorize_user

  def authorize_user
   # redirect_to :status => 404 # Double check this. This might now be how to lock down the /users route
  end

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to users_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end