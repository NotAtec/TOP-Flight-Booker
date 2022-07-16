class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show ]

  def new
    @pax = params[:pax]
    @date = params[:date]
    @flight = Flight.where(id: params[:flight]).take
    @arr = (@flight.eobt.to_time + 3600 + 3600).strftime('%H:%M')
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
