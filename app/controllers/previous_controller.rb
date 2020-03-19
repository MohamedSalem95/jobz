class PreviousController < ApplicationController

	def new
		@previous = Previou.new
	end

	def create
		@work = Previou.new(previous_work_params)
		if @work.save
			redirect_to home_path
		else
			render :new
		end
	end


	private
	def previous_work_params
		params.require(previous).permit(:name, :description, :url, :location)
	end
end
