class UsersController < ApplicationController
  before_filter :authorized_to_view_user, only: [:show]
  before_filter :is_admin, only: [:index]

  def authorized_to_view_user
    if !signed_in?
      redirect_to new_session_url,
      notice: "
      <p>You need to be logged in to view this user.</p>
      <p>Not a member yet? <a href='#{new_user_url}'>Sign Up!</a></p>
      ".html_safe
    end
  end

  def is_admin
    if !signed_in? || signed_in? && current_user.admin != true
      redirect_to items_url
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.email = @user.email.downcase

    if @user.save
      UserMailer.welcome_email(@user).deliver
      session[:user_id] = @user.id
      redirect_to user_url(session[:user_id]), notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def index
    @user = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(session[:user_id])
  end

  def update
    @user = User.find_by_id(session[:user_id])
    @user.update_attributes(params[:user])

    if @user.save
      redirect_to user_url(session[:user_id])
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by_id(session[:user_id])
    @user.destroy
    reset_session

    redirect_to items_url
  end
end
