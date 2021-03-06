class ApplicationController < ActionController::Base
  protect_from_forgery

	def current_ability
  		@current_ability ||= Ability.new(current_author)
	end

	rescue_from CanCan::AccessDenied do |exception|
		flash[:error] = "Access denied."
		redirect_to forbidden_path
	end

end
