class PostsController < ApplicationController
  include ActionView::Helpers::TextHelper

	def index
		@posts = Post.all
		render :index
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		post_params = params.require(:post).permit(:title, :body, :place_id)
		@post = Post.create(post_params)
		@user = current_user
		@user.posts.push(@post)
		# redirect_to #city show page
		redirect_to "/places/#{@post.place_id}"
	end

	def show
		@post = Post.find(params[:id])
		render :show
	end

	def edit
		@post = Post.find(params[:id])
		# if @post.user_id == current_user.id
		# 	render :edit
		# else
		# 	#redirect to city page
		# end
		render :edit
	end

	def update
		post_id = params[:id]
		post = Post.find(post_id)
		updated_attributes = params.require(:post).permit(:title, :body)
		post.update_attributes(updated_attributes)
		redirect_to "/places/#{post.place_id}"
	end

	def delete
		@post = Post.find(params[:id])
		place = @post.place_id
		@post.delete
		redirect_to "/places/#{place}"
	end
end
