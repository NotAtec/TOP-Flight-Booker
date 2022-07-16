class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show ]

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new()
    params[:pax].to_i.times { @booking.passengers.build }
  end

  def show
  end

  def create
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
