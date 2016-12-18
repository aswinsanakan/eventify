class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def after_sign_in_path_for(user)
  	#if user.sign_in_count == 1
  	#	edit_user_registration_path
  	#else
  		events_path
  	#end
  end

  rescue_from CanCan::AccessDenied do 
  	redirect_to root_path, alert: "You are not authorized to access this section!"
  end
end
