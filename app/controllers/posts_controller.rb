class PostsController < ApplicationController
	before_action :authenticate_user!

	def show
		@post = Post.find(params[:id])
	end

	def index
		@posts = current_user.posts.latest
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user = current_user
		if @post.save
			flash[:notice] = 'post created successfully'
			redirect_to profile_path(current_user)
		else
			render :new
		end
	end

	private
	def post_params
		params.require(:post).permit(:body)
	end
end
