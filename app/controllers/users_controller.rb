class UsersController < ApplicationController
# help

  before_filter :authorized_to_view_user, only: [:show]
  before_filter :no_one_authorized, only: [:index]

  def authorized_to_view_user
    if !signed_in?
      redirect_to new_session_url,
      notice: "
      <p>You need to be logged in to view this user.</p>
      <p>Not a member yet? <a href='#{new_user_url}'>Sign Up!</a></p>
      ".html_safe
    end
  end

  def no_one_authorized
   redirect_to :status => 404 # Double check this. This might now be how to lock down the /users route
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
      session[:user_id] = @user.id
      redirect_to user_url(@user.id), notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def edit
    @user = User.find_by_id(session[:user_id])
  end

  def update
    redirect_to user_url(session[:user_id])
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
