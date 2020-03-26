class ImagesController < ApplicationController
	before_action :authenticate_user!

	def new
		@task = Task.find(params[:task_id])
		@image = Image.new
	end

	def create
		@image = Image.new(image_params)
		@task = Task.find(params[:task_id])
		@image.task = @task
		if @image.save
			flash[:notice] = 'image saved successfully'
			redirect_to @task
		else
			render :new

		end
	end


	private
	def image_params
		params.require(:image).permit(:file, :caption)
	end
end
