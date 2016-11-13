class EventsController < ApplicationController

	before_action :authenticate_user!

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@event.user_id = current_user.id
		if @event.save
			redirect_to events_path, notice: "Successfully added!"
		else
			render action: "new"
		end
	end

	def show
		@event = Event.find(params[:id])
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
	end

	private

	def event_params
		params[:event].permit(:name, :description, :venue_id, :city_id, :start_datetime, :end_datetime, :entry_fee, :status, :locality_id)
	end
end
