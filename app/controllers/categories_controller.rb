class CategoriesController < ApplicationController

	def show
		@category = Category.find(params[:id])
		@events = @category.events
		@categories = Category.all
	end

end
