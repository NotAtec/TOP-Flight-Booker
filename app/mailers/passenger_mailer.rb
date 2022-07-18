class PassengerMailer < ApplicationMailer
  default from: 'confirmation@example.com'

  def confirmation_email
    @passenger = params[:passenger]
    @booking = @passenger.booking
    @flight = @booking.flight
    @adep = @flight.adep.name
    @ades = @flight.ades.name
    @eobt = @flight.eobt
    @eta = (@eobt.to_time + 2.hours).strftime('%H:%M')

    mail(to: @passenger.email, subject: "Your flight booking.")
  end
end
