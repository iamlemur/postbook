class OmniauthCallbacksController < Devise::OmniauthCallbacksController
	
	def all
		author = Author.from_omniauth(request.env["omniauth.auth"])
		if author.persisted?
			flash.notice = "Signed in!"
			sign_in_and_redirect author
		else
			session["devise.user_attributes"] = author.attributes
			redirect_to new_author_registration_url
		end
	end

	alias_method :twitter, :all
end
