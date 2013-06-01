class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new

  end

  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.save

    redirect_to reservations_url
  end

  def show
    @reservation = Reservation.find_by_id(params[:id])
  end

end
