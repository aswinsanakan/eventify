class VenueBookingsController < ApplicationController

	def index

	end

	def new
		@venue_booking = VenueBooking.new
	end

	def create
		@venue_booking = VenueBooking.new(venue_booking_params)
		if @venue_booking.save
			redirect_to venue_path(@venue_booking.venue_id), notice: "Booked successfully!"
		else
			redirect_to venue_path(@venue_booking.venue_id), notice: "Date slot not available. Booking failed!"
		end
	end

	private

	def venue_booking_params
		params[:venue_booking].permit(:start_datetime, :end_datetime, :venue_id, :event_id)
	end
end
