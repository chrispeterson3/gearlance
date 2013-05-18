class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_url(session[:user_id]), notice: "Successfully logged in!"
    else
      redirect_to new_session_url, notice: "Sign In unsuccessfull..why?"
    end 
  end

  def destroy
    reset_session
    redirect_to new_session_url, notice: "Successfully logged out!"
  end
end