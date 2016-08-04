class WelcomeController < ApplicationController
before_action :authenticate_user!, only: [:dashboard]

	def index
	end
	
	def dashboard
		@user=current_user
	end

end
