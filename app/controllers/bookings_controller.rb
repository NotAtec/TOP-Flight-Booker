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
    @booking = Booking.new(booking_params)
    if @booking.save
      @booking.passengers.each do |pax|
        PassengerMailer.with(passenger: pax).confirmation_email.deliver_now
      end
      
      flash[:notice] = 'Booking completed!'
      redirect_to booking_path(@booking)
    else
      flash[:alert] = 'Booking Failed, an error occured.'
      render 'new'
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:flight_id, :date, passengers_attributes: [:name, :email])
  end
end
