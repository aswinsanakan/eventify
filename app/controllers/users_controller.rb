class UsersController < ApplicationController
	before_action :authenticate_user!

	load_and_authorize_resource

	def index
		@users = User.all
	end	

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path, notice: "Successfully created user!"
		else
			render action: "new"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to users_path, notice: "Updated Successfully!"
		else
			render action: "edit"
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path, notice: "Deleted successfully!" 
	end


	private

	def user_params
		params[:user].permit(:email, :password, role_ids:[])
	end
end
