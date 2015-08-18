class HomesController < ApplicationController

	def index
	end

	def about
	end

	def contact
	end

	def potato
	end

	def onion
	end

	def maize
	end

	def message
		name = params["name"]
		email = params["email"]
		message = params["message"]
		UserMailer.registration_confirmation(name,email,message).deliver
		redirect_to contact_path
	end
end
