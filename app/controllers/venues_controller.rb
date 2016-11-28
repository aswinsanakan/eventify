class VenuesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	load_and_authorize_resource #invokes ability.rb
	
	def index
		@venues = Venue.all 
	end

	def new
		@venue = Venue.new
	end

	def create
		@venue = Venue.new(venue_params)
		@venue.user_id = current_user.id
		if @venue.save
			redirect_to venues_path, notice: "Successfully added venue!"
		else
			render action: "new"
		end
	end

	def show
		@venue = Venue.find(params[:id])
		@venue_booking = VenueBooking.new
	end

	def edit
		@venue = Venue.find(params[:id])
	end

	def update
		@venue = Venue.find(params[:id])
		if @venue.update_attributes(venue_params)
			redirect_to venues_path, notice: "Updated Successfully!"
		else
			render action: "edit"
		end
	end

	def destroy
		@venue = Venue.find(params[:id])
		@venue.destroy
		redirect_to venues_path, notice: "Deleted successfully!" 
	end

	private

	def venue_params
		params[:venue].permit(:name, :locality_id, :address, :user_id, :seats)
	end
end
