class VenuesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	load_and_authorize_resource #invokes ability.rb
	
	def index
		@venues = Venue.all 
	end

end
