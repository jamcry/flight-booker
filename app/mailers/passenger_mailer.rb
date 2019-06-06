class PassengerMailer < ApplicationMailer
	default from: 'notifications@flightbooker.com'

	def booking_email
		@passenger = params[:passenger]
		@booking = params[:booking]
		mail(to: @passenger.email, subject: "Your booking confirmation")
	end
end
