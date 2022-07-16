class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show ]

  def new
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
