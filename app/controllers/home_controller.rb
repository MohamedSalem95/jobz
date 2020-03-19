class HomeController < ApplicationController

	before_action :authenticate_user!, only: [:profile]

	def index

	end

	def profile
		@user = User.find(params[:id])
	end
end
