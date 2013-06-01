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

      redirect_to reservations_url
    else
      redirect_to new_session_url, notice: "You need to be signed in to reserve gear!"
    end
  end

  def show
    @reservation = Reservation.find_by_id(params[:id])
  end

end
