class ApplicationController < ActionController::Base
  protect_from_forgery
	# helper_method :current_user

	# def current_user
	#   @current_user ||= User.find session[:user_id] if session[:user_id]
	#   if @current_user
	#     @current_user
	#   else
	#     OpenStruct.new(name: 'Guest')
	#   end
	# end

end
