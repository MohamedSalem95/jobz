class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.new(comment_params)
		@comment.post = @post
		@comment.user = current_user
		if @comment.save
			flash[:notice] = 'comment saved successfully'
			redirect_to @post
		else
			redirect_to @post
		end


	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end
end
