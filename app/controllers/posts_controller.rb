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
		post = Article.find(post_id)
		updated_attributes = post_params
		article.update_attributes(updated_attributes)
		redirect_to "/places/#{@post.place_id}"
	end

	private

	# def post_params
	# 	params.require(:post).permit(:title, :body, :place_id)
	# end

end
