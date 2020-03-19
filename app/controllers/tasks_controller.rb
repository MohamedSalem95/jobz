class TasksController < ApplicationController

	before_action :authenticate_user!

	def show
		@task = Task.find(params[:id])
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)
		@task.user = current_user
		if @task.save
			flash[:notice] = 'Prevoius work created successfully'
			redirect_to task_path(@task)
		else
			render :new
		end
	end


	private
	def task_params
		params.require(:task).permit(:title, :description, :url, :location)
	end

end
