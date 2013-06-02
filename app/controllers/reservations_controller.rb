class ReservationsController < ApplicationController
  before_filter :authorize_user, only: [:index]

  def authorize_user
    if !signed_in?
      redirect_to new_session_url,
      notice: "
      <p>Log In to view your Reservations</p>
      <p>Not a member yet? <a href='#{new_user_url}'>Sign Up!</a></p>
      ".html_safe
    end
  end

  def index
    @reservations = Reservation.where(:user_id => session[:user_id])
  end

  def create
    if signed_in?
      @reservation = Reservation.new(params[:reservation])

        if @reservation.save
          UserMailer.reservation_request(@reservation).deliver
          UserMailer.reservation_notice(@reservation).deliver

          redirect_to user_url(session[:user_id]), notice: "Thanks for making your reservation!"
        else
          redirect_to item_url(params[:reservation][:item_id]), notice: "There were erros when making your reservation. Make sure your dates are correct!"
        end

      else
        redirect_to new_session_url, notice: "<p>You need to be logged in to make a new reservation.</p>
       <p>Not a member yet? <a href='#{new_user_url}'>Sign Up!</a></p>
       ".html_safe
     end
  end

  def show
    @reservation = Reservation.find_by_id(params[:id])
  end

  def destroy
    reservation = Reservation.find_by_id(params[:id])
    id = reservation.user_id
    reservation.destroy

    redirect_to user_url(id)
  end

end
