class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new

  end

  def create
    if signed_in?
      @reservation = Reservation.new(params[:reservation])

      @reservation.save
      UserMailer.reservation_request(@reservation).deliver
      UserMailer.reservation_notice(@reservation).deliver

      redirect_to user_url(session[:user_id]), notice: "Thanks for making your reservation!"
    else
      redirect_to new_session_url, notice: "You need to be signed in to reserve gear!"
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
