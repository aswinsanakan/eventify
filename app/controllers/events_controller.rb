class EventsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]
	load_and_authorize_resource #invokes ability.rb

	def index
		@events = Event.all
		@categories = Category.all
		if params[:search]
			@events = Event.search(params[:search])
		else
			@events = Event.all 
		end
	end

	def new
		@event = Event.new
		
	end

	def create
		@event = Event.new(event_params)
		@event.locality_id = @event.venue.locality_id
		@event.user_id = current_user.id

		if @event.save
			@venue_booking = VenueBooking.create(start_datetime: @event.start_datetime, end_datetime: @event.end_datetime, venue_id: @event.venue_id, event_id: @event.id)
			redirect_to events_path, notice: "Successfully added!"
		else
			render action: "new"
		end
	end

	def show
		@event = Event.find(params[:id])
		@event_booking = EventBooking.new
		@event_bookings = @event.event_bookings

		if params[:booking_id]
			@booking_confirmed = EventBooking.find(params[:booking_id])
		end
	end

	def edit
		@event = Event.find(params[:id])
	end
	
	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(event_params)
			redirect_to events_path,notice: "Updated successfully!"
		else
			render action: "edit"
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path, notice: "Deleted successfully!" 
	end

	def my_events
		@events = current_user.events
		@categories = Category.all
	end

	private

	def event_params
		params[:event].permit(:name, :description, :venue_id, :city_id, :start_datetime, :end_datetime, :entry_fee, :status, :locality_id, :tickets_left, :avatar, category_ids: [])
	end
end
