class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email(passenger)
    @passenger = passenger
    @booking = @passenger.booking
    @url = booking_url(@booking)
    mail(to: @passenger.email, subject: "#{@passenger.name}'s flight confirmation")
  end
end
