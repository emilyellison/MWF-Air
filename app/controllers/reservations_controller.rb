class ReservationsController < ApplicationController
  
  def new
    @reservation = Reservation.new
  end
  
  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.user_id = @current_user.id
    @flight = Flight.find_by_id(params[:flight_id])
    @reservation.flight_id = @flight.id
    #@res
    if @reservation.save
      redirect_to root_url, notice: 'Congrats you\'re reservation has been booked!'
    else
      flash[:notice] = 'You had a few errors.'
      render :new
    end
  end
  
end