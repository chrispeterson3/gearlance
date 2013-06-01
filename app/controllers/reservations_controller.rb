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
      redirect_to reservations_url
    else
      redirect_to new_session_url, notice: "You need to be signed in to reserve gear!"
    end
  end

  def show
    @reservation = Reservation.find_by_id(params[:id])
  end

end
