class VenuesController < ApplicationController
	def index
		@venues = Venue.all 
	end

end
